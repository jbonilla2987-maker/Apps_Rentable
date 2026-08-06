# RutaRentable PRO — Versión unificada 2.0

Esta versión reorganiza el proyecto en un único archivo principal `index.html`.
Dentro de ese archivo están integrados el diseño y la lógica de la aplicación.

## Archivos necesarios

- `index.html`: aplicación completa, CSS y JavaScript.
- `manifest.webmanifest`: instalación en el celular.
- `service-worker.js`: caché y funcionamiento como PWA.
- `icons/`: iconos de la aplicación.
- `.nojekyll`: compatibilidad con GitHub Pages.
- `404.html`: redirección a la página principal.

## Ventajas

- Menos archivos que reemplazar en GitHub.
- No existe riesgo de subir `index.html` sin su `app.js` o `style.css` correspondiente.
- El código queda encapsulado y no crea variables globales.
- Conserva la misma clave de almacenamiento, por lo que los datos existentes del navegador se mantienen.
- Una instalación nueva comienza sin datos de demostración.
- Incluye jornadas, comisión opcional de InDrive, corredores reembolsados, gastos manuales, vehículos, mantenimiento, reportes, respaldo y modo celular.

## Publicar en GitHub Pages

1. Descomprime el ZIP.
2. En el repositorio usa **Add file > Upload files**.
3. Reemplaza todos los archivos de la raíz y la carpeta `icons`.
4. Presiona **Commit changes** una sola vez.
5. Espera a que **Actions > pages build and deployment** termine.

La publicación debe seguir configurada como:

- Branch: `main`
- Folder: `/(root)`

## Datos existentes

Esta versión mantiene las claves de `localStorage` de las versiones anteriores. Actualizar los archivos no borra vehículos, jornadas, gastos o configuración guardados en el mismo navegador.
