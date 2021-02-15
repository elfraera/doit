#!/bin/bash
# REV08: Sat 21 Nov 2020 06:46:44 WIB
# REV06: Thu Feb 13 14:54:50 WIB 2020
# REV05: Tue Jan  7 10:09:51 WIB 2020
# START: Tue Jun 18 16:56:27 WIB 2019
# 
# Copyright (C) 2019-2020 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope 
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

RUBY="2.6.6"

echo "==== ==== ==== ==== ==== ==== ==== rbenv init"
[ -d $HOME/.rbenv/bin/ ] && eval "$(rbenv init -)"
echo "==== ==== ==== ==== ==== ==== ==== rbenv global $RUBY"
rbenv global $RUBY
echo "==== ==== ==== ==== ==== ==== ==== ruby -v"
ruby -v
echo "==== ==== ==== ==== ==== ==== ==== .gemrc"
echo "gem: --no-document" > $HOME/.gemrc
echo "==== ==== ==== ==== ==== ==== ==== gem install bundler"
gem install bundler
# gem install bundler rails

exit 0

