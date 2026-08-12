# RutaRentable PRO 3.4 — Aprobación de usuarios desde la aplicación

Versión preparada para **GitHub Pages** y **Firebase Hosting**.

## Administrador

El único correo con permisos de administración de usuarios es:

`jbonilla2987@gmail.com`

## Cómo funciona el acceso

1. Una persona abre RutaRentable y pulsa **Continuar con Google**.
2. Si es la primera vez, se crea una solicitud con estado **Pendiente**.
3. Mientras esté pendiente, rechazada o bloqueada, la persona no puede entrar a la aplicación ni leer/escribir sus datos de RutaRentable en Firestore.
4. El administrador entra con `jbonilla2987@gmail.com`.
5. En **Usuarios (menú lateral)** aparecen las solicitudes.
6. El administrador puede **Aprobar**, **Rechazar** o **Bloquear**.
7. Cuando una solicitud cambia a **Aprobado**, el usuario obtiene acceso sin que sea necesario editar el código.

El módulo **Usuarios** se oculta para todos los usuarios normales.

## IMPORTANTE: publicar las reglas de Firestore

Antes de probar usuarios nuevos, copia el contenido de `FIRESTORE_REGLAS.txt` en:

**Firebase Console > Firestore Database > Rules**

y pulsa **Publish**.

Si no publicas estas reglas, la aprobación de usuarios puede fallar o quedar insegura.

## GitHub Pages

1. Descomprime el paquete.
2. Sube todos los archivos y carpetas al repositorio.
3. En GitHub abre **Settings > Pages**.
4. Publica desde la rama correspondiente y la carpeta **/(root)**.
5. En Firebase Authentication conserva el dominio de GitHub Pages en **Authorized domains**.

## Firebase Hosting

La carpeta `public` contiene la misma versión. Puedes publicar con el archivo `firebase.json` incluido.
