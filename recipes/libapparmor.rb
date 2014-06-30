#
# Author:: Stephen Frank (<stephen.frank@.nrel.gov>)
# Cookbook Name:: rstudio-server
# Recipe:: libapparmor
#
# Installs AppArmor library - required for Ubuntu install of RStudio Server
#
# Copyright (C) 2014, Alliance for Sustainable Energy

package 'libapparmor1' do
  action :install
end