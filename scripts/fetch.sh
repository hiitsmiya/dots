#!/bin/sh
cat <<a



         os: $(grep PRETTY /etc/os-release | cut -c 13- | tr -d '"' | tr '[A-Z]' '[a-z]')
         model: $(cat /sys/devices/virtual/dmi/id/product_family | tr '[A-Z]' '[a-z]')
         pkgs: $(pacman -Q | wc -l)
         uptime: $(uptime --pretty | tr -d 'upourinutes ' | tr ',' ' ')
         ram: $(free -h | sed -n '2{p;q}' | awk '{print $3 "/" $2}' | tr -d 'i' | tr '[A-Z]' '[a-z]')


a
echo

