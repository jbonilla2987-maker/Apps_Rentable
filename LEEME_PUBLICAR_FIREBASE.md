# Publicar RutaRentable PRO 3.7.2

Esta versión agrega un backend de **Cloud Functions** para que la eliminación aprobada por el administrador borre también la cuenta de Firebase Authentication.

## Método rápido en Windows

Ejecuta:

`PUBLICAR_FIREBASE.bat`

El script publica, en este orden:

1. Cloud Function `approveAccountDeletion`.
2. Reglas de Firestore.
3. Firebase Hosting.

## Requisito importante

El proyecto debe poder desplegar Cloud Functions. Firebase puede pedirte habilitar facturación/plan Blaze para desplegarlas.

## No borres la carpeta `functions`

Contiene el backend seguro. La clave del cambio 3.7.2 es que el borrado de Authentication se realiza con Firebase Admin SDK en el servidor, no desde el navegador.

## Prueba después de publicar

Crea una cuenta de prueba, solicita eliminación y apruébala desde **Usuarios**. Luego verifica en Firebase Console > Authentication que el usuario de prueba haya desaparecido.
