#!/bin/sh
#
# 

D_DAV='/var/www/html/raspi01'
D_WP_UPL='/var/www/html/blog/wp-content/uploads'


while :
do
  ls $D_DAV/*.jpg 2> /dev/null
  [ $? -eq 0 ] && mv $D_DAV/*.jpg $D_WP_UPL/

  /usr/bin/php /var/www/html/blog/wp-content/plugins/media-from-ftp/mediafromftpcmd.php

  sleep 1
done
