# Publicar RutaRentable PRO 3.4 en Firebase

## Paso obligatorio: reglas de Firestore

1. Abre Firebase Console.
2. Entra al proyecto **rutarentable-pro**.
3. Ve a **Firestore Database > Rules**.
4. Copia todo el contenido de `FIRESTORE_REGLAS.txt`.
5. Reemplaza las reglas actuales y pulsa **Publish**.

Estas reglas hacen que:
- `jbonilla2987@gmail.com` sea el único administrador de accesos.
- Los usuarios nuevos queden pendientes.
- Solo un usuario aprobado pueda leer o guardar sus propios datos.
- Un usuario normal no pueda aprobarse a sí mismo.

## Hosting

Después publica la carpeta `public` con Firebase Hosting como normalmente lo haces.
