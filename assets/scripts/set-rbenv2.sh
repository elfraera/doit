#!/bin/bash
# REV09: Wed 17 Feb 2021 13:21:22 WIB
# START: Tue Jun 18 16:56:27 WIB 2019
# 
# Copyright (C) 2019-2021 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope 
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# RUBY="2.6.6"
RUBY="3.0.0"

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

