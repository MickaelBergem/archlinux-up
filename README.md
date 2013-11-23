Archlinux Up
============

Development ready archlinux environment using ansible and optionaly vagrant

Installation
------------

- Directory layout:

    vagrant (shared folder to /vagrant)
         +-- devops
         |    +-- files/
         |    +-- hosts/
         |    +-- roles/
         |    +-- templates/
         |    +-- playbook.yml
         |    +-- ansible.sh

- Install on Vagrant:

```
git clone https://github.com/vbrajon/archlinux-up.git && cd archlinux-up
vagrant up
```

- Install on Archlinux:

```
git clone https://github.com/vbrajon/archlinux-up.git && cd archlinux-up
devops/ansible.sh
```
