#!/bin/bash
# REV02: Wed 17 Feb 2021 15:15:11 WIB
# START: Tue Jun 18 16:56:27 WIB 2019
# 
# set-rbenv1.sh installs rubby using rbenlv.
#                       
# Copyright (C) 2019-2021 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

# Try until it works.
RUBY="2.6.6" 
# RUBY="2.7.2"
# RUBY="3.0.0"

[ -d $HOME/.rbenv ] || git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
echo "==== ==== ==== ==== ==== ==== ==== source .profile"
source $HOME/.profile
echo "==== ==== ==== ==== ==== ==== ==== rbenv init"
[ -d $HOME/.rbenv/bin/ ] && eval "$(rbenv init -)"
sync
echo "==== ==== ==== ==== ==== ==== ==== type rbenv"
type rbenv
echo "==== ==== ==== ==== ==== ==== ===="
[ -d $HOME/.rbenv/plugins/ ] || git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build
echo "==== ==== ==== ==== ==== ==== ==== rbenv install -l"
rbenv install -l
echo "==== ==== ==== ==== ==== ==== ==== rbenv install $RUBY"
rbenv install $RUBY --verbose

exit 0

