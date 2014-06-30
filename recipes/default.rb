#
# Author:: Stephen Frank (<nicholas.long@.nrel.gov>)
# Cookbook Name:: rstudio-server
# Recipe:: default
#
# Default recipe for installing 
#
# Copyright (C) 2014, Alliance for Sustainable Energy

# Dependencies
case node['platform_family']
  when "debian"
    include_recipe "apt"
    include_recipe "gdebi"
    if platform?("ubuntu")
      include_recipe("rstudio-server::libapparmor")
    end
  when "rhel"
    include_recipe "yum"
end
include_recipe "r"

# Version and Architecture
version = node['rstudio-server']['version']
arch = node['rstudio-server']['arch']

# Install from Binary Package
case node['platform_family']
  when "debian"
    # Download
    remote_file "/tmp/rstudio-server-#{version}-#{arch}.deb" do
      source "#{node['rstudio-server']['source_url']}rstudio-server-#{version}-#{arch}.deb"
      mode 0644
      #checksum node['rstudio-server']['checksum']
    end
    # Install
    dpkg_package "rstudio-server" do
      source "/tmp/rstudio-server-#{version}-#{arch}.deb"
      action :install
    end
  when "rhel"
    # To Do
end