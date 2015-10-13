# -*- mode: ruby -*-
# vi: set ft=ruby :

my_iso = '/Users/ceichhorn/Downloads/VirtualMachines/ovftransport.iso'
my_api = '2'

Vagrant.configure(my_api) do |config|
  config.vm.box = '/Users/ceichhorn/Downloads/VirtualMachines/centos66-cloud-1.8.box'
  config.vm.box_check_update = true
  config.vm.hostname = 'mycentos'
  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = 'Berksfile'

  config.vm.provision 'chef_zero' do |chef|
    chef.cookbooks_path = '/Users/ceichhorn/gmtichef/cookbooks'
    chef.roles_path = '/Users/ceichhorn/gmtichef/roles'
    chef.data_bags_path = '/Users/ceichhorn/gmtichef/databags'
    chef.add_recipe 'jmeter'
  end

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.memory = '1024'
    vb.customize ['storageattach', :id, '--storagectl', 'IDE Controller', '--port', 0, '--device', 0, '--type', 'dvddrive', '--medium', my_iso]
  end
end
