FROM php:8.2-apache

# Install PHP database extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache URL rewriting
RUN a2enmod rewrite

# Set Apache document root
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public

# Update Apache VirtualHost configuration
RUN sed -ri \
    's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' \
    /etc/apache2/sites-available/000-default.conf

# Configure Apache directory access without .htaccess
RUN printf '<Directory /var/www/html/public>\n\
    Options FollowSymLinks\n\
    AllowOverride None\n\
    Require all granted\n\
</Directory>\n' \
    > /etc/apache2/conf-available/app-public.conf \
    && a2enconf app-public

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY . /var/www/html

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Expose Apache port
EXPOSE 80