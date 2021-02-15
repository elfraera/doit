#!/bin/bash
# REV06: Fri 20 Nov 2020 19:59:50 WIB
# REV05: Thu Jan 16 16:11:26 WIB 2020
# REV04: Tue Jul  2 12:43:32 WIB 2019
# START: Tue Jun 18 14:47:15 WIB 2019
# 
# Copyright (C) 2019-2020 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope 
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

DEBS="
   autoconf
   bison 
   build-essential
   curl
   dirmngr
   git
   gnupg
   libcurl4-openssl-dev
   libffi-dev 
   libgdbm-dev
   libncurses5-dev 
   libreadline-dev
   libssl-dev
   libsqlite3-dev 
   libyaml-dev 
   libxml2-dev
   libxslt1-dev
   make
   nodejs
   sqlite3
   software-properties-common
   yarn
   zlib1g-dev
"

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg     | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

echo "====== UPDATE  ==========";
sudo apt-get update;
echo "====== UPGRADE ==========";
sudo apt-get dist-upgrade -y;
echo "====== REMOVE  ==========";
sudo apt-get autoremove --purge -y;
echo "====== CLEAN   ==========";
sudo apt-get autoclean -y;

sudo apt-get install $DEBS -y

exit 0

