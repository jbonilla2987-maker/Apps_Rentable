@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ==============================================
echo   RutaRentable PRO 3.7.2 - Publicacion PRODUCCION
echo   Hosting + Firestore Rules + Cloud Functions
echo ==============================================
echo.
where node >nul 2>nul
if errorlevel 1 (
  echo ERROR: Node.js no esta instalado o no esta en el PATH.
  echo Instala Node.js 20 o 22 y vuelve a ejecutar este archivo.
  pause
  exit /b 1
)

echo [1/4] Iniciando sesion en Firebase...
call npx firebase-tools@latest login
if errorlevel 1 goto :error

echo.
echo [2/4] Instalando dependencias del backend...
call npm --prefix functions install
if errorlevel 1 goto :error

echo.
echo [3/4] Publicando Cloud Function de eliminacion total...
call npx firebase-tools@latest deploy --only functions:approveAccountDeletion --project rutarentable-pro
if errorlevel 1 goto :error

echo.
echo [4/4] Publicando reglas y sitio web...
call npx firebase-tools@latest deploy --only firestore:rules,hosting --project rutarentable-pro
if errorlevel 1 goto :error

echo.
echo ==============================================
echo PUBLICACION COMPLETADA.
echo https://rutarentable-pro.web.app/
echo ==============================================
echo.
echo IMPORTANTE: Cloud Functions requiere que el proyecto pueda desplegar funciones.
echo Si Firebase solicita habilitar facturacion, activa el plan Blaze antes de repetir.
pause
exit /b 0

:error
echo.
echo ERROR: La publicacion no termino correctamente.
echo Revisa el mensaje anterior, corrige el problema y vuelve a ejecutar.
pause
exit /b 1
