FROM wordpress:php8.1-fpm

# Instalar cliente de MySQL
RUN apt-get update && apt-get install -y default-mysql-client && rm -rf /var/lib/apt/lists/*

# Copiar script de inicialización
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

# Ejecutar init.sh en el arranque
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
