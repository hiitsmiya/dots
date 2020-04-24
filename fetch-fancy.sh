#!/bin/sh

f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'

cat << a



     $f5os$d$t  $f1-$d$t  $f7$(grep PRETTY /etc/os-release | cut -c 13- | tr -d '"' | tr '[A-Z]' '[a-z]')$d$t
     $f5pk$d$t  $f1-$d$t  $f7$(pacman -Q | wc -l)$d$t
     $f5ut$d$t  $f1-$d$t  $f7$(uptime --pretty | tr -d 'ayupourinutes ' | tr ',' ' ')$d$t
     $f5rm$d$t  $f1-$d$t  $f7$(free -h | sed -n '2{p;q}' | awk '{print $3 "/" $2}' | tr -d 'i' | tr '[A-Z]' '[a-z]')$d$t

        $f1⚫$t$f2⚫$t$f3⚫$t$4⚫$t$5⚫$t$f6⚫$t



a
