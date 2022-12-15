- dep: esta herramienta siempre fue un experimento para probar un gestor de dependencias. Dejó de tener contribuciones significativas en el 2018 y se declaró como obsoleto en 2020

Estas son los gestores de dependencias que he encontrado para go:

- mod: Se empezó a usar en el mismo 2018. Es el gestor de independencias oficial de go, es el oficial y es el único que se usara ahora mismo. Adopta un enfoque semi-centralizado ya que no se trabaja  con ningún repositorio de paquetes , como en `npm` o `pip`, si no que se puede añadir la url de cualquier repositorio en internet se use como módulo para cualquier programa que desarrollemos. Dichas urls se pueden anotar directamente en el archivo `go.mod` o bien mediante `go get`, teniendo de las dos formas la posibilidad de elegir una versión o rama específica. Si es posible `go get` conecta con un servidor proxy para descargarlas, lo que nos libera de la latencia en la descarga de paquetes y restrigiendo el acceso a paquetes con vulnerabilidades o con licencias incompatibles. También se usa el archivo `go.sum` para almacenar las sumas criptográficas de los paquetes con las dependencias. Otras gestiones sobre las dependecias, que generalmente requieren modificar los dos archivos mencionados, son facilitadas por [los subcomandos de `go mod`](https://go.dev/ref/mod#go-mod-download). A la hora de descargar dependencias sus módulos pueden guardarse la caché de módulos en la carpeta `vendor`.

- glide: fue un intento de integrar el concepto de repositorio de paquetes en go, en la línea de `npm` y  `pip`.  El proyecto no se ha declarado como obsoleto ni se ha archivado pero su repositorio dejó de tener contribuciones en 2017/2018.

- godep: era un gestor que fue archivado a favor de dep. Usaba un archivo `json` para especificar las dependencias y las almacenaba en la carpeta `vendor`.

Para WikiDisp usaré `go mod`, no sólo por ser la única herramienta que he encontrado si no que me parece bastante flexible a la hora de cómo elegir guardar las dependencias, y nos ayuda a manejarlas, y nos da garantías de seguridad con las dependencias de nuestro programa.
