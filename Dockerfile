# Use the official PHP 8.0 Apache image
FROM php:8.0-apache

# Copy the PHP application to the container
COPY . /var/www/html/static_Php

# Copy the Apache configuration file
COPY ./src/domain_Conf/ahmetproje.com.tr.conf /etc/apache2/sites-available/ahmetproje.com.tr.conf

# Enable SSL module for Apache
RUN a2enmod ssl

# Expose ports 80 and 443
EXPOSE 80
EXPOSE 443

# Enable the site configuration
RUN a2ensite ahmetproje.com.tr

# Set the default command to start Apache
CMD ["apache2-foreground"]