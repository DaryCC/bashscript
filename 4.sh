#! /bin/sh
#uso de && (and)
rm -rf docs docs-backup result.log
mkdir docs docs-backup
find -type f -name "*.txt" |xargs -t -I arg  cp arg docs
# cp -R ./docs/* ./docs-backup | echo "OK" > result.log
cp -R ./docs/* ./docs-backup && echo "OK" > result.log


