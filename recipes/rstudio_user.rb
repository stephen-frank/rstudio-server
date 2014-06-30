#
# Author:: Stephen Frank (<stephen.frank@.nrel.gov>)
# Cookbook Name:: rstudio-server
# Recipe:: rstudio_user
#
# Creates a user account for use with RStudio Server
#
# Copyright (C) 2014, Alliance for Sustainable Energy

group node['rstudio-server']['rstudio_user_group'] do
  #append true
end

# Add a user for RStudio Server
user node['rstudio-server']['rstudio_user'] do
  comment "RStudio User"
  home "/home/#{node['rstudio-server']['rstudio_user']}"
  gid node['rstudio-server']['rserve_user_group']
  password node['rstudio-server']['rstudio_user_pwd']
  shell '/bin/bash'
  system true
end

directory "/home/#{node['rstudio-server']['rstudio_user']}" do
  owner node['rstudio-server']['rserve_user']
  group node['rstudio-server']['rstudio_user_group']
  mode "0755"
  action :create
end