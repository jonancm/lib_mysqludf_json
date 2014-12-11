# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

MANIFESTS_PATH = "provision/manifests"
MODULES_PATH = "provision/modules"
MANIFEST_FILE = "site.pp"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "ubuntu/trusty64"

	# Update APT repositories
	config.vm.provision :shell, inline: "apt-get update"

	# Provision machines with Puppet
	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = MANIFESTS_PATH
		puppet.module_path = MODULES_PATH
		puppet.manifest_file = MANIFEST_FILE
	end
end
