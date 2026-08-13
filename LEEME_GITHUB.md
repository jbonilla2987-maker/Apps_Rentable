# RutaRentable PRO 3.7.2 en GitHub Pages

Puedes seguir publicando el frontend en GitHub Pages, pero la función de **eliminación total de cuenta** depende de Firebase Cloud Functions.

Antes de usar la versión pública:

1. Despliega `approveAccountDeletion` en Firebase con `PUBLICAR_FIREBASE.bat` o Firebase CLI.
2. Publica las reglas de Firestore incluidas.
3. Sube el frontend a GitHub Pages.
4. Mantén el dominio de GitHub Pages autorizado en Firebase Authentication.

Si la Cloud Function no está desplegada, el botón administrativo de aprobación de borrado mostrará un error y no eliminará la cuenta de Authentication.
