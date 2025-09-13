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
