# os-updates Ansible Role

This Ansible role automates the installation of ubuntu security updates.

## Requirements

- Ansible 2.10+
- Supported target systems: Ubuntu.

## Example Playbook

Here's an example playbook that uses the `os-updates` role:

In order to run:

```
ansible-playbook ubuntu-updates.yml
```

```
ubuntu-updates.yml
- hosts: ubuntu_web_servers
  become: true
  roles:
    - os-updates
  tags:
  - updates
```

## TODO


### How to free up /boot partition space in Ubuntu
If the /boot partition fills up, then there is a script that clears it on the /opt/ folder.

```bash
bash /opt/kernel_removal_script.sh
```