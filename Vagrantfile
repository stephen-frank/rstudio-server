# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version
VAGRANTFILE_API_VERSION = "2"

# Set up the box
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # NFS flag
  is_windows = (RUBY_PLATFORM =~ /mswin|mingw|cygwin/)
  use_nfs = !is_windows
  use_nfs = false if ENV["VAGRANT_DISABLE_NFS"] == "true" 
  
  # Box name
  config.vm.hostname = "test-rstudio-server"
  
  # Box details
  #config.vm.box = "ubuntu-precise-32-vbox"
  #config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.box = "ubuntu-precise-64-vbox"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
  # TO DO: Test other boxes... 32-bit Ubuntu, etc.
  
  # Box config
  config.vm.provider :virtualbox do |vb|
    # Change default memory and CPU's
    vb.customize ["modifyvm", :id, "--memory", 1024, "--cpus", 2]
  end
  
  # Enable Berkshelf and Chef
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest  
  
  # Network
  config.vm.network :private_network, type: 'dhcp'
  config.vm.network :forwarded_port, guest: 8787, host: 8787
  
  # Provisioning
  config.vm.provision :chef_solo do |chef|
    # Configure recipes
    chef.json = {
      :r => {
        :install_method => "package",
        :cran_mirror => "http://cran.revolutionanalytics.com",
        :version => "3.1.0-1precise0"
      },
      :"rstudio-server" => {
        :arch => "amd64",
        :make_rstudio_user => true,
        :rstudio_user => "r",
        :rstudio_user_password => "test"
      }
    }
    
    # Recipes to run
    chef.add_recipe "rstudio-server::default"
  end
end