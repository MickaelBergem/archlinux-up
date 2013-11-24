#!/bin/bash
#
set -x

## Move into shared directory if it exists
ls /vagrant && cd /vagrant

## Install Ansible if it is absent
if !(which ansible;) then
    pacman -Syu --noconfirm --needed base-devel fakeroot jshon wget git expac
    ls pkg || mkdir pkg && cd pkg
    ls PKGBUILD || wget https://aur.archlinux.org/packages/pa/packer/PKGBUILD
    ls packer-*.pkg.tar.xz || makepkg --asroot
    pacman -U packer-*.pkg.tar.xz --noconfirm --needed
    mv /usr/bin/packer /usr/bin/p
    p -S ansible --noconfirm --noedit
    echo 127.0.0.1 > /etc/ansible/hosts
fi

## Run ansible provisionning on the guest
ansible-playbook devops/playbook.yml

exit $?
