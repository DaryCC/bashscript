#!/usr/bin/env bash
#logical OR,combining commands
echo "REMOVING FILES"
rm -rf docs docs-backup result.log
ls
echo "MAKING DIRECTORIES"
mkdir docs docs-backup
ls
echo "FINDING FILES"
find -type f -name "*.txt" |xargs -t -I arg  cp arg docs
# cp -R ./docs/* ./docs-backup | echo "OK" > result.log
ls ./docs
echo "COPYING FILES"
cp -R ./docs/* ./docs-backup && echo "Se copió exitosamente." > result.log
bat result.log
echo "CHECK EXIT STATUS..."
