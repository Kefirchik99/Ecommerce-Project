# Use PHP 8.1 with Apache
FROM php:8.1-apache

# Install PHP extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite for clean URLs
RUN a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html
