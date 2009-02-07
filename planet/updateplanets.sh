#!/bin/sh
# 
# update all planets
#

PLANETARGS = ""

if [ -n $1 ]; then
	PLANETARGS = $1
fi
 
cd /home/apps/planet

# generate configuration files
cp -f eclipse/planeteclipse.ini eclipse/config_planeteclipse.ini
cp -f eclipse/planetuniverse.ini eclipse/config_planetuniverse.ini

# add feeds to planet eclipse
cat eclipse/feeds/community.ini >> eclipse/config_planeteclipse.ini

# add feeds to planet universe
cat eclipse/feeds/community.ini >> eclipse/config_planetuniverse.ini
cat eclipse/feeds/ecosystem.ini >> eclipse/config_planetuniverse.ini

# update universe first (this will fill the cache)
./planet.py -x $PLANETARGS eclipse/config_planetuniverse.ini

# update planet from cache
./planet.py -o $PLANETARGS eclipse/config_planeteclipse.ini
