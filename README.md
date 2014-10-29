operations-handbook
===================

Operations Handbook for Cloud Services


## Servers

[Documented on the wiki](https://github.com/technicalmachine/operations-handbook/wiki)

## Ansible

Important files:

  * [hosts](ansible/hosts)

  * Common
    * [SSH keys](ansible/roles/common/files/authorized_keys)

### Important commands

(all run from the `ansible/` directory):

#### Check connectivity and authentication to all servers

    ansible all -i hosts -a "uptime"

#### Dry-run check configuration against all servers

    ansible-playbook -i hosts main.yml --check --diff

When these commands ask for the SSL key passphrase, you can press enter without providing it if you are not expecting to deploy SSL keys.

#### Apply configuration on all servers

    ansible-playbook -i hosts main.yml

#### Apply configuration on one server only

    ansible-playbook -i hosts -l <hostname> main.yml

where `<hostname>` is one of the full hostnames from the `hosts` file.

#### Install updates

    ansible all -i hosts -a "apt-get update"
    ansible all -i hosts -a "apt-get upgrade -s"
    ansible all -i hosts -a "apt-get upgrade -y"
