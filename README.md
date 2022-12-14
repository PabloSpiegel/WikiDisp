# WikiDisp
Proyecto para la asignatura IV en el curso 22/23

## Descripción del problema
La obtención de información sobre artículos que presentan una disparidad de información entre idiomas dentro de la wikipedia. Es fácil encontrar artículos en idiomas que noMuchas veces es fácil encontrar artículos menos desarrollados y que no tienen la etiqueta de esbozo (conocida en inglés como stub).
## Posible solución
Una aplicación web que permita examinar las disparidades en lenguajes en wikipedia de distintas maneras.

La más simple sería introducir la URL de un artículo y dos idiomas, y que la aplicación calcule si hay mucha más cantidad de palabras en un idioma que en el otro. Para ese artículo también podría analizar si la gente que edita en un lenguaje proviene de países donde las lenguas suelen ser otras, tratando así de discernir idiomas que no tienen una comunidad consolidada y en los que los usuarios tienden a hacer uso de lenguas más dominantes a la hora de aportar a wikipedia.

Una vez visto como se haría para un único artículo, se podrían hacer los mismos análisis para los artículos que vaya sobre un tema, Una vez introducido (mediante un item de wikidata, por ejemplo) se enseña primero entre todos los que hay aquellos que tengan esa disparidad. Entre los idiomas seleccionados, se visualiza en qué idiomas hay más artículos con disparidad y diferencia de palabras acumulada. Por supuesto, se puede indiciar la cantidad de artículos que sean esbozos. Los mismos análisis pueden hacerse cogiendo como conjunto los artículos que traten sobre eventos recientes o que todavía están en curso.

##Gestión de dependecias
Para gestionar las dependencias se usaran los módulos de `go`. Las dependencias guardaran los paquetes en el directorio `vendor`, para garantizar la reproducibilidad de las construcciones del proyecto. 

## Configuracion del repositorio
La configuración del repositorio con la url ssh se puede ver [aquí](Objetivo0/config.png) y la llave añadida a la cuenta de github se puede ver [aquí](Objetivo0/llave.png)
