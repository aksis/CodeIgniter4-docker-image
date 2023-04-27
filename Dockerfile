FROM php:8.2-apache-bullseye
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        libicu-dev \
        && docker-php-ext-configure intl \
        && docker-php-ext-install intl \
    ; \
    rm -rf /var/lib/apt/lists/*
ADD https://github.com/codeigniter4/framework/archive/refs/tags/v4.3.4.tar.gz /var/www/html
RUN cd /var/www/html \
    && tar -xf v4.3.4.tar.gz --strip-components=1 \
    && rm -f v4.3.4.tar.gz \
    && chown -R www-data:www-data /var/www/html \
    && sed -i "s,/var/www/html,/var/www/html/public,g" /etc/apache2/sites-available/000-default.conf
