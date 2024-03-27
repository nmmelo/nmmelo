# Nginx Community Edition

This Ansible Role is used for install [Nginx Community Edition](https://www.nginx.com/resources/wiki/community/) in the lastest version, using sample config files created
by pH Consultoria.
<br>
<br>

[![Terraform Version](https://img.shields.io/badge/ansible-7.3.0%20+-623CE4.svg?logo=ansible)](https://github.com/ansible/ansible)
[![Owner](https://img.shields.io/badge/Developed%20by-https://www.phconsultoria.com.br-blue)](https://www.phconsultoria.com.br)<br>

Requirements
------------

* Ansible 7.3.0+
* Targets Operatios Systems Homologated:
  * RedHat Like
    * CentOS 7.9
    * Amazon Linux V2
    * Rocky Linux

## Role Variables

Variables are available in vars directory. Read and change this. The required variables are:

* root_dir:

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - name: Example Playbook
      hosts: all
      roles: 
        - nginx

## License

[![License](https://img.shields.io/badge/License-Apache2.0-blue)](https://www.apache.org/licenses/LICENSE-2.0)

This module is licensed under the Apache License Version 2.0, January 2004.
Please see [LICENSE](LICENSE) for full details.

Copyright &copy; 2022  [pH Consultoria](https://www.phconsultoria.com.br)

## Author Information

Founded in 2015 and based in Belo Horizonte/Brazil, the pH Consultoria is specialized in AWS cloud environments, 
focused in Infrastructure, Security and Automations. We offer commercial support for all of our projects and encourage 
you to reach out if you have any questions or need help. Feel free to email us at 
contato@phconsultoria.com.br.<br>

We can also help you with:
* Consulting & training on AWS.
  * Security
  * Infrastructure
  * Automations (Infra as a Code, Configuration Management)
<br>
