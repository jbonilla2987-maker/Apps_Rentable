# RutaRentable PRO 3.7.2 - Preparación de lanzamiento

## Qué cambia en esta versión

La aprobación de eliminación de cuenta deja de depender del navegador. El administrador aprueba la solicitud desde **Usuarios** y una Cloud Function valida que quien ejecuta la acción sea `jbonilla2987@gmail.com`.

La función elimina:

- `users/{uid}` y todas sus subcolecciones.
- Conversación de soporte del usuario.
- Ubicación GPS actual.
- Entrada del directorio de chat.
- Chats privados donde participe el usuario.
- Cuenta de **Firebase Authentication**.

Se conserva un registro mínimo de la solicitud y un evento de auditoría para poder demostrar que la eliminación fue aprobada y ejecutada.

## Publicar

1. El proyecto Firebase debe permitir desplegar Cloud Functions (Firebase puede solicitar el plan Blaze).
2. Ejecuta `PUBLICAR_FIREBASE.bat`.
3. Espera a que termine la publicación de la Function, reglas y Hosting.
4. Abre `https://rutarentable-pro.web.app/` y fuerza una recarga.

## Prueba obligatoria antes de abrir al público

Usa una cuenta de Google de prueba, nunca tu cuenta administradora:

1. Solicita acceso.
2. Apruébala desde Usuarios.
3. Crea una jornada, un gasto y un mensaje de soporte.
4. Desde la cuenta de prueba solicita eliminación.
5. Desde el administrador pulsa **Aprobar borrado**.
6. Comprueba que aparezca **Eliminados + cuenta Auth**.
7. En Firebase Authentication confirma que el UID de prueba ya no existe.
8. En Firestore confirma que sus datos personales y chats se eliminaron.
9. Vuelve a iniciar sesión con ese Google: debe entrar como un usuario nuevo y volver a solicitar aprobación.

## Antes del lanzamiento público

- Activar y probar **App Check** antes de poner `enforceAppCheck: true` en la Cloud Function.
- Publicar Política de privacidad y Términos definitivos (ahora aparecen como beta).
- Definir un correo/canal de soporte y tiempos de atención dentro de la app.
- Hacer copia/exportación administrativa antes del lanzamiento.
- Probar al menos dos teléfonos Android y dos navegadores de escritorio.
- Confirmar que GPS, Jornadas, Reportes, Chat, Soporte y eliminación funcionen con Internet lento y después de cerrar/abrir la sesión.
