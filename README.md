# Instagram-Image-Downloader
Un sencillo script escrito en Powershell para descargar imágenes desde Instagram.

## Parámetros

* **-url**[obligatorio] : Enlace a la publicación de la imagen.
* **-nA**[obligatorio] : Nombre que tendrá la imagen al descargarse
* **-ruta**[opcional]: Ruta hacia la carpeta donde se descargará la imagen, si no se especifica, la imagen se descargará en la carpeta actual donde se ejecuta el script.

## Uso

```
.\Instagram-Image-Downloader.ps1 -url "Link de la publicación" -nA "Nombre para el archivo"
```

## Ejemplo

```
.\Instagram-Image-Downloader.ps1 -url "https://www.instagram.com/p/B7XqSbaJMlt/" -nA "elvis"
```
