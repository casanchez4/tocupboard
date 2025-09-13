#!/bin/bash
set -e

echo "Esperando a que la base de datos esté lista..."
until mysqladmin ping -h"$WORDPRESS_DB_HOST" --silent; do
  sleep 2
done

echo "Base de datos lista, instalando WordPress..."

wp core install --url="http://localhost:8080"   --title="ToCupboard"   --admin_user="admin"   --admin_password="adminpassword"   --admin_email="admin@tocupboard.local"   --skip-email --path=/var/www/html

# Activar tema y plugin de ejemplo
wp theme install twentytwentythree --activate --path=/var/www/html
wp plugin install wordfence --activate --path=/var/www/html

echo "WordPress instalado correctamente."
