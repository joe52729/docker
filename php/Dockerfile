FROM php:7.4-fpm

# 更新软件包列表并安装所需的软件包
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mysqli 

# 如果需要安裝其他擴展，可以在這裡繼續添加相應的指令

# 安裝 zip 擴展
RUN apt-get install -y libzip-dev \
    && docker-php-ext-install zip

# 啟用 opcache 擴展
RUN docker-php-ext-enable opcache

