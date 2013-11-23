# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = "archlinux64"
  config.vm.box_url = "https://dl.dropboxusercontent.com/u/6750592/Arch_Linux_2013.11_x64.box"
  # config.vm.network :forwarded_port, guest: 80, host: 8080
  # config.vm.network :private_network, ip: "10.0.0.10"
  # config.vm.network :public_network
  config.ssh.forward_agent = true
  # config.vm.synced_folder "../data", "/vagrant_data"
  
  config.vm.provision :shell do |shell|
    shell.path = "devops/ansible.sh"
    shell.args = ""
  end
  
  # config.vm.provision :ansible do |ansible|
  #   ansible.playbook = "devops/site.yml"
  # end

end
