#!/bin/sh
# 
# update all planets
#

cd /home/apps/planet

# generate configuration files
cp -f eclipse/planeteclipse.ini eclipse/config_planeteclipse.ini
cp -f eclipse/planetuniverse.ini eclipse/config_planetuniverse.ini

# add feeds to planet eclipse
cat eclipse/feeds/community.ini >> eclipse/config_planeteclipse.ini

# add feed to planet universe
cat eclipse/feeds/community.ini >> eclipse/config_planetuniverse.ini
cat eclipse/feeds/ecosystem.ini >> eclipse/config_planetuniverse.ini

# update universe first (this will fill the cache)
./planet.py -x eclipse/config_planetuniverse.ini

# update planet from cache
./planet.py -o eclipse/config_planeteclipse.ini
