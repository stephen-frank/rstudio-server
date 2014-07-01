Description
===========
This cookbook installs and configures RStudio Server. It is a work in progress.

Requirements
============


Known Issues
============

1. The RStudio user can log in but gets an error about being "unable to connect to the service";
   see discussion here:
   https://support.rstudio.com/hc/communities/public/questions/200646688-RStudio-Server-Unable-To-Connect-To-Service
2. RStudio Server does not persist through `vagrant reload`; it should be configured automatically
   to start at boot so I need to track down what's wrong. `sudo rstudio-server verify-installation`
   returns a warning: "WARNING Unable to change rserver into app armor restricted hat (profile may
   be disabled);" maybe this is related?