# Proyecto ToCupboard
# ToCupboard, es una plataforma e-commerce destinada a facilitar a sus usuarios la compra de estos productos y orientada a apoyar a los pequeños comerciantes
# ToCupboard WordPress con Nginx, MySQL y phpMyAdmin

## 🚀 Cómo levantar el proyecto

1. Asegúrate de tener instalado **Docker Desktop** en Windows.
2. Descarga y descomprime este paquete ZIP.
3. Abre **PowerShell** en la carpeta `tocupboard-wp-phpmyadmin`.
4. Ejecuta el comando:

```powershell
docker compose up --build
```

5. Accede a los servicios:
   - WordPress: [http://localhost:8080](http://localhost:8080)
   - phpMyAdmin: [http://localhost:8081](http://localhost:8081)

## 🔑 Credenciales

- WordPress:
  - Usuario: `admin`
  - Password: `adminpassword`
- phpMyAdmin:
  - Usuario: `root`
  - Password: `rootpassword`

## 🛠 Servicios incluidos

- **WordPress** (PHP-FPM)
- **MySQL 8.0**
- **Nginx** con Content Security Policy (CSP)
- **phpMyAdmin** para gestionar la base de datos

# Fase 1: Configuración Inicial y Seguridad Básica
  1.1 Verificación del Entorno
    Primero, asegurémonos de que tu WordPress esté funcionando correctamente:
      - Abre tu navegador y ve a http://tucupboard.local:8080
      - Accede al admin en http://tucupboard.local/wp-admin
      - Verifica que tienes WordPress 6.8.2 instalado
      - Crea el certificado SSL autofirmado
        # Crear directorio para certificados
        mkdir ssl
        # Generar certificado autofirmado
        openssl req -x509 -newkey rsa:4096 -keyout ssl/localhost.key -out ssl/localhost.crt -days 365 -nodes -subj "/CN=localhost"

  1.2 Configuración de Seguridad Inicial
    Instalar plugins de seguridad esenciales:
      1. Ve a Plugins > Añadir nuevo
      2. Busca e instala estos plugins:
        - Wordfence Security (para firewall y escaneo)
        - SSL Insecure Content Fixer (para HTTPS)
        - Limit Login Attempts Reloaded (contra ataques de fuerza bruta)

    Activa todos los plugins instalados

    