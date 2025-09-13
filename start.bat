@echo off
echo ===========================================
echo  🚀 Iniciando ToCupboard WordPress Stack
echo ===========================================
echo.

REM Verificar que Docker esté disponible
docker --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo ❌ Docker no está instalado o no está en el PATH.
    echo Instala Docker Desktop y vuelve a intentar.
    pause
    exit /b
)

REM Levantar los contenedores
echo ▶️ Construyendo e iniciando contenedores...
docker compose up --build

echo.
echo ✅ Entorno levantado correctamente.
echo 🌐 WordPress:  http://localhost:8080
echo 🛠 phpMyAdmin: http://localhost:8081
pause
