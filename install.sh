#!/bin/bash

# copy the ppm 
sudo wget --output-document=/usr/bin/ppm https://raw.github.com/makesites/ppm/master/bin/ppm

# make it executable
sudo chmod ugo+x /usr/bin/ppm

# make the global config file
sudo touch ~/.ppm
sudo chmod 660 ~/.ppm
sudo cat > ~/.ppm <<END
; main configuration
[core]
	modules_folder = ./modules
; list of repositories
[repositories]
	github = git://github.com/

END

# final confirmation
echo "ppm installed"