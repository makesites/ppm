#!/bin/bash

# copy the ppm 
sudo wget --output-document=/usr/bin/ppm http://raw.github.com/makesites/ppm/master/bin/ppm

# make it executable
sudo chmod ugo+x /usr/bin/ppm

# make the global config file
sudo touch ~/.ppm
sudo chmod 600 ~/.ppm
sudo cat > ~/.ppm <<END
; Start a new pool named 'www'.
[core]

[repositories]
	github = git://github.com/

END

# final confirmation
echo "ppm installed"