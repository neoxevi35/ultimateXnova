FROM php:8.2-apache

# Instalar extensiones de PHP necesarias para el juego
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Habilitar el módulo de reescritura de Apache
RUN a2enmod rewrite

# Copiar los archivos del juego al contenedor
COPY . /var/www/html/

# Ajustar los permisos para que el instalador web pueda escribir archivos
RUN chown -R www-data:www-data /var/www/html/

# Exponer el puerto por defecto
EXPOSE 80
