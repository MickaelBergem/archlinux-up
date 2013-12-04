Archlinux Up
============

Development ready Archlinux environment using ansible and optionally vagrant

Installation
------------

- Directory layout:

    vagrant (shared folder to /vagrant)
         +-- devops
         |    +-- ansible/
         |    |    +-- files/
         |    |    +-- hosts/
         |    |    +-- roles/
         |    |    +-- templates/
         |    |    +-- playbook.yml
         |    +-- vagrant/
         |    |    +-- Vagrantfile
         |    +-- ansible.sh

- Install on Vagrant:

        git clone https://github.com/vbrajon/archlinux-up.git && cd archlinux-up
        vagrant up

- Install on Archlinux:

        git clone https://github.com/vbrajon/archlinux-up.git && cd archlinux-up
        devops/ansible.sh
