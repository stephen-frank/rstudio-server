#
# Author:: Stephen Frank (<nicholas.long@.nrel.gov>)
# Cookbook Name:: rstudio-server
# Attribute:: default
#
# Default attributes for RStudio Server installation
#
# Copyright (C) 2014, Alliance for Sustainable Energy

default['rstudio-server']['version'] = "0.98.953"
default['rstudio-server']['arch'] = "i386"
default['rstudio-server']['source_url'] = "http://download2.rstudio.org/"

default['rstudio-server']['rstudio_user'] = "rstudio"
default['rstudio-server']['rstudio_user_group'] = "rstudio"
default['rstudio-server']['rstudio_user_pwd'] = "rstudio"
