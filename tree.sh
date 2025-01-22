#!/bin/bash

# Tree Generator
# will just generate a tree of directories

echo

if [ $1 != "" ]
  then cd "$1"
fi

if [ `ls -F -1 | grep "/" | wc -l` = 0 ]
  then echo "-> no sub-directories"
fi

ls -R | grep "$S" | \
  sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -w 's/^/   /' -e 's/-/|/'

echo
