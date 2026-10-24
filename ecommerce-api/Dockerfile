
# --------------------------------------------------
# Etapa 1: instalar dependencias de Composer
# --------------------------------------------------
FROM composer:2 AS vendor

WORKDIR /app

COPY . .

RUN composer install \
    --no-dev \
    --prefer-dist \
    --no-interaction \
    --optimize-autoloader

# --------------------------------------------------
# Etapa 2: imagen final de Laravel con PHP-FPM
# --------------------------------------------------
FROM php:8.2-fpm-alpine

RUN apk add --no-cache \
    icu-dev \
    libxml2-dev \
    oniguruma-dev \
    $PHPIZE_DEPS \
    && docker-php-ext-install \
        pdo_mysql \
        mbstring \
        xml \
    && apk del $PHPIZE_DEPS

WORKDIR /var/www/html

# Copiar el código de Laravel
COPY . .

# Copiar vendor desde la etapa de Composer
COPY --from=vendor /app/vendor ./vendor

# Permisos para Laravel
RUN chown -R www-data:www-data storage bootstrap/cache \
    && chmod -R 775 storage bootstrap/cache

EXPOSE 8000

CMD ["php-fpm"]
