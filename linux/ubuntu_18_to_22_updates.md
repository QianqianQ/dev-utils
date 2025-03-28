```bash
# php

php -version
 
# Configure PHP
 
# Check all the enabled Apache modules
ls /etc/apache2/mods-enabled
# There will be php7.x.conf and php7.x.load files for php7.x module, and it needs to be disabled
sudo a2dismod php7.x
 
# Check all the available Apache modules
ls /etc/apache2/mods-available
# There will be php8.x.conf and php8.x.load files for php8.x module, and it needs to be enabled
sudo a2enmod php8.X
 
# Restart apache2 service
sudo systemctl restart apache2
 
# Display a list of all modules that are currently loaded into the Apache HTTP Server.
apachectl -M


# PostgreSQL
# Check PostgreSQL server version
sudo -u postgres psql -c 'SELECT version();'
 
# Check PostgreSQL client version
psql -V
 
# It is possible server and client have different versions. It is recommended but not mandatory to have the same version
 
# List all installed packages related to PostgreSQL
dpkg --get-selections | grep postgres
 
# List all the running PostgreSQL clusters
pg_lsclusters
 
# If there are multiple clusters, the following configuration needs to be checked and updated if needed
 
# For the PostgreSQL with the server version showed from the first command
# in /etc/postgresql/<major-version-number>/main/postgresql.conf
# Update the following config if needed. listen_addresses may be commented out, uncomment it
listen_addresses = '*'
port = 5432
# in /etc/postgresql/<major-version-number>/main/pg_hba.conf
# Add the following config if not exists
host    all             all             0.0.0.0/0               scram-sha-256
# Or
host   all              all             0.0.0.0/0              md5
```