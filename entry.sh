#!/bin/sh

mkdir -p /usr/share/webapps/ && cd /usr/share/webapps/ && \
    wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz > /dev/null 2>&1 && \
    tar -xzvf phpMyAdmin-4.9.0.1-all-languages.tar.gz > /dev/null 2>&1 && \
    mv phpMyAdmin-4.9.0.1-all-languages phpmyadmin && \
    chmod -R 777 /usr/share/webapps/ && \
    ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin


# start apache
echo "Starting httpd"
httpd -DFOREGROUND 
echo "Done httpd"

