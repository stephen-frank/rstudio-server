Description
===========
This cookbook installs and configures RStudio Server. It is a work in progress.

Requirements
============


Known Issues
============

1. The RStudio user is being created, but the password is not working properly. It may not expect a
   plain text password but rather a hash; see: http://docs.opscode.com/resource_user.html
2. Once the password is fixed (manually), the RStudio user can log in but gets an error about being
   "unable to connect to the service"; see discussion here:
   https://support.rstudio.com/hc/communities/public/questions/200646688-RStudio-Server-Unable-To-Connect-To-Service
3. RStudio Server does not persist through `vagrant reload`; it should be configured automatically
   to start at boot so I need to track down what's wrong.