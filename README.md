# sandunguert
Proyecto para la asignatura IV en el curso 22/23

##Descripción del problema
La obtención de información sobre artículos que presentan una disparidad de información entre idiomas dentro de la wikipedia. Es fácil encontrar artículos en idiomas que noMuchas veces es fácil encontrar artículos menos desarrollados y que no tienen la etiqueta de esbozo (conocida en inglés como stub).
##Posible solución
Una aplicación web que permita examinar las disparidades en lenguajes en wikipedia de distintas maneras.

La más simple sería introducir la URL de un artículo y dos idiomas, y que la aplicación calcule si hay mucha más cantidad de palabras en un idioma que en el otro. Para ese artículo también podría analizar si la gente que edita en un lenguaje proviene de países donde las lenguas suelen ser otras, tratando así de discernir idiomas que no tienen una comunidad consolidad y en los que los usuarios tienden a hacer uso de lenguas más dominantes a la hora de aportar a wikipedia.

Una vez visto como se haría para un único artículo, se podrían hacer los mismos análisis para los artículos que vaya sobre un tema, Una vez introducido (mediante un item de wikidata, entre todos los que hay aquello que tengan esa disparidad. Aquí también tenemos la posibilidad de visualizar qué idiomas tienen más disparidad en los artículos sobre el tema. Por supuesto, se puede indiciar la cantidad de artículos que sean esbozos. También se podrían analizar de la misma forma los artículos que vayan sobre eventos recientes o que todavía están en curso.

##Lista de requisitos
* [x] ¿Se trata de un problema real del que se tenga conocimiento personal?
Sí, desde hace años me he puesto a comparar los artículos en inglés y español, viendo que normalmente están menos desarrollados en nuestro idioma.


* [ ] ¿Se trata de un problema que para solucionar requiera el despliegue
   de una aplicación en la nube?

Este no lo marco porque me parece que lo cumple pero no sé cómo justificarlo.
Si tuviese que meter cosas para cumplir el requisito, añadiría la posibilidad de que el usuario almacene en una cuenta la información que ha obtenido un usuario y crear un historial almacenando como estaba un artículo o tema cada vez que se haya consultado


* [x] ¿La solución requiere una cierta cantidad de lógica de negocio, en vez
    solucionarse sólo almacenando y buscando?
Analizar la disparidad va más allá que una simple consulta a una BBDD. Para el conteo de palabras hará falta hacer web scraping.


* [x] ¿Se ha incluído la configuración del repositorio y se ha enlazado desde el `README`?

##Configuracion del repositorio
La configuración del repositorio con la url ssh se puede ver [aquí](Objetivo0/config.png) y la llave añadida a la cuenta de github se puede ver [aquí](Objetivo0/llave.png)
