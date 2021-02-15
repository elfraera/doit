#!/bin/bash
# REV07: Sat 21 Nov 2020 06:46:27 WIB
# REV05: Tue Jan  7 10:05:20 WIB 2020
# REV04: Tue Jul  2 12:43:50 WIB 2019
# REV03: Mon Jul  1 12:24:35 WIB 2019
# START: Tue Jun 18 16:56:27 WIB 2019
# 
# Copyright (C) 2019-2020 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope 
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

RUBY="2.6.6"

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

