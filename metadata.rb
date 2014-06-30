name             "rstudio-server"
maintainer       "Stephen Frank"
maintainer_email "stephen.frank@nrel.gov"
license          "LGPL"
description      "Installs/Configures RStudio Server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

depends "apt"
depends "gdebi"

supports "debian"
supports "ubuntu"
