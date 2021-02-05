ROPT="-auv --delete --progress --no-times --no-perms --no-owner --no-group --checksum"
FROM="./"
TO="../../"
NICE="15"
JEKYLL="bundle exec jekyll"
FILES="
  index.md
  _config.yml 
  .dojekyll
  .gitignore
  001.md
  favicon.ico
  Gemfile
  README.md
"
DIR1="_includes/"
DIR2="_layouts/"

echo "# ########## ########## ########## ########## ########## RSYNC0"
time nice -$NICE rsync $ROPT $FILES $TO
echo "# ########## ########## ########## ########## ########## RSYNC DIR1"
time nice -$NICE rsync $ROPT $DIR1  $TO$DIR1
echo "# ########## ########## ########## ########## ########## RSYNC DIR2"
time nice -$NICE rsync $ROPT $DIR2  $TO$DIR2
echo "# ########## ########## ########## ########## ########## LS"
ls -Fa
cd ../../
echo "# ########## ########## ########## ########## ########## JEKYLL"
jekyll serve

