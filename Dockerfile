FROM php:8.2-apache

# Install PHP extensions for MariaDB
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache rewrite module
RUN a2enmod rewrite

# Configure Apache to serve the project root
RUN printf '<Directory /var/www/html>\n\
    Options FollowSymLinks\n\
    AllowOverride None\n\
    Require all granted\n\
    DirectoryIndex index.php index.html\n\
</Directory>\n' \
    > /etc/apache2/conf-available/mechafix.conf \
    && a2enconf mechafix

WORKDIR /var/www/html

# Copy the project into the container
COPY . /var/www/html

# Set permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80