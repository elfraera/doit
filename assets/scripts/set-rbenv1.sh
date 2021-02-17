#!/bin/bash
# REV01: Wed 17 Feb 2021 12:59:41 WIB
# START: Tue Jun 18 16:56:27 WIB 2019
# 
# Copyright (C) 2019-2021 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope 
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# RUBY="2.6.6"
RUBY="3.0.0"

[ -d $HOME/.rbenv ] || git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
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

