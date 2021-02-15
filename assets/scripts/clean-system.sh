#!/bin/bash
# REV05: Tue 16 Feb 2021 00:10:14 WIB
# START: Tue Jun 18 14:16:04 WIB 2019
# 
# Copyright (C) 2019-2021 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope 
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

RMOPT="-rfv"

DELETE="
   /usr/lib/ruby/
   /usr/local/bin/update_rubygems
   /usr/local/bin/bundle
   /usr/local/bin/bundler
   /usr/local/lib/site_ruby/
   /usr/share/rubygems-integration/
   /var/lib/gems/
   /tmp/this-should-be-a-dummy
"

DELDEB="
   ruby
   ruby-all-dev
   ruby-dev
"

for II in $DELDEB ; do
   sudo apt-get purge $II -y
done

sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get autoremove --purge -y
sudo apt-get autoclean -y;

for II in $DELETE ; do
   [ -f $II ] && (echo "Delete file   $II"; sudo rm $RMOPT $II)
   [ -d $II ] && (echo "Delete folder $II"; sudo rm $RMOPT $II)
done

exit 0


