#!/bin/bash
#
set -x

## Install Puppet if not in the basebox already
if !(which ansible;) then
    pacman -Syu --no-confirm base-devel fakeroot jshon wget git expac
    mkdir /vagrant/pkg && cd /vagrant/pkg
    wget https://aur.archlinux.org/packages/pa/packer/PKGBUILD
    makepkg
    pacman -U packer-*.pkg.tar.xz
    mv /usr/bin/packer /usr/bin/p
    p -S ansible --noconfirm --noedit
    echo 127.0.0.1 > /etc/ansible/hosts ansible_python_interpreter=/usr/bin/python2
fi

## Run ansible provisionning on the guest
ansible-playbook /vagrant/devops/playbook.yml --connection=local

exit $?