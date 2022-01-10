#!/bin/bash

svnadmin create /var/lib/svn/trunk
chown -R www-data:www-data /var/lib/svn
chmod -R 775 /var/lib/svn
service apache2 start
exec tail -f /dev/null