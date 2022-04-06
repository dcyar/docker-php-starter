FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
  build-essential \
  zip \
  unzip \
  curl \
  git \
  libonig-dev \
  libzip-dev \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install xdebug
RUN pecl install php-xdebug \
 docker-php-ext-enable xdebug

# Install extensions
RUN docker-php-ext-install pdo pdo_mysql mysqli mbstring zip exif pcntl

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
