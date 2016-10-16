#!/bin/sh
# --anyauth : for digest

MDIR=/var/lib/motion

cd $MDIR

WebDAV_URL='http://www.example.com/raspi01/'

if [ $# -ne 1 ]; then
  echo "none" 
  exit 1
fi

set -x 

curl --anyauth --user $USER:$PASS --upload-file "$MDIR/$1" ${WebDAV_URL}

