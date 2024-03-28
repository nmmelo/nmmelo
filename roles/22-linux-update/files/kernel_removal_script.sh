#!/bin/bash

# Define the number of kernels to keep (including the current one)
KERN_KEEP=2

# Get the list of installed kernels
INSTALLED_KERNELS=$(dpkg --list | awk '/^ii  linux-image-[0-9]/ {print $2}')

# Get the currently running kernel version
CURRENT_KERNEL=$(uname -r)

# Count the number of installed kernels
NUM_KERNELS=$(echo "$INSTALLED_KERNELS" | wc -l)

# Ensure we keep at least KERN_KEEP kernels
if [ "$NUM_KERNELS" -le "$KERN_KEEP" ]; then
    echo "No old kernels to remove."
    exit 0
fi

# Sort the list of installed kernels by version number
SORTED_KERNELS=$(echo "$INSTALLED_KERNELS" | sort -V)

# Calculate how many old kernels to remove
NUM_TO_REMOVE=$((NUM_KERNELS - KERN_KEEP))

# Loop through and remove old kernels
for KERNEL in $SORTED_KERNELS; do
    if [ "$KERNEL" != "linux-image-$CURRENT_KERNEL" ]; then
        echo "Removing old kernel: $KERNEL"
        sudo apt-get remove --purge -y "$KERNEL"
        NUM_TO_REMOVE=$((NUM_TO_REMOVE - 1))
    fi

    # Exit the loop if we've removed enough old kernels
    if [ "$NUM_TO_REMOVE" -le 0 ]; then
        # run this to update grub kernel list
        sudo update-grub
        break
    fi
done

echo "Old kernels removed successfully."
