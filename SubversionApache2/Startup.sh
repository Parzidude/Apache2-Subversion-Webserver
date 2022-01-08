mkdir -p /var/lib/svn/ 
svnadmin create /var/lib/svn/trunk 
chown -R www-data:www-data /var/lib/svn 
chmod -R 775 /var/lib/svn 
service apache2 start
while true; do
  sleep 1000
done