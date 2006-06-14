#!/bin/sh

cd /home/apps/planet

cat output/rss10.xml| sed "s/ & / \&amp; /g" > output/rss11.xml
cp output/rss11.xml output/rss10.xml


cat output/rss20.xml| sed "s/ & / \&amp; /g" > output/rss21.xml
cp output/rss21.xml output/rss20.xml
