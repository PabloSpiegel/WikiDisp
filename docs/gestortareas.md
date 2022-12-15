## Criterios considerados
- Legibilidad inmediata del código.
- Documentación de las tareas.
- Facilidad para especificar las tareas.
- Facilidad para que se pueda integrar en otros proyectos


## Gestores considerados

- `magefile`: Este gestor usa un archivo de `go` para especificar las tareas. Al ser código se puede ejecutar diretamente en windows.
  - ventajas:
    - accesible para quién sepa `go `. No hace falta conocer un DSL para poder leer y mantener los archivos que usa el gestor de tareas
    - por ello, tiene más facilidad de meter código complejo usando bucles y las demás características de un lenguaje de alto nivel.
  - inconvenientes:
    - el comando que tiene que ejecutarse se especifica como una función que tiene de argumentos la orden que se ejecuta en terminal y  el entorno en el que se ejecuta la orden, lo cuál hace que pierda legibilidad
- `task`: este gestor está escrito en go, lee archivos escritos en YAML y está diseñado para ser más simple que otros gestores
  - ventajas:
    - el formato YAML es bastante fácil de leer al estar conformado de claves seguidas por sus respectivos valores
    - da la posibilidad de importar un taskfile, haciendo fácil que **WikiDisp** sea integrado dentro de otros proyectos
  - inconvenientes:
    - el mismo formato condiciona que hagan falta más líneas de código para leer
- `just`: aunque sirva para lo mismo que un gestor de tareas, ``just`` es un "ejecutador de comandos" escrito en `rust`
  - ventajas:
    - permite que ejecutar órdenes e una gran cantidad de lenguajes interpretados como `Python`

Estos tres gestores da facilidades para documentar las tareas, lo cual hace más accesible que otras personas pueda trabajar con el proyecto.

- `Make`: es el gestor de tareas más utilizado a lo largo de los años y que más ha tenido un uso continuado
  - ventajas:
    - la comunidad que tiene detrás es muy grande y hay una gran cantidad de recursos de ayuda
    - dispone de macros, que facilitan escribir órdenes para trabajar con

  - desventajas:
    - al no haberse pensado para ejecutar tareas que no generen archivos hace falta introducir opciones que hacen que el archivo Makefile sea menos legibles de una forma inmediata.
    - en general es una herramienta pensada para trabajar con `C` y `C++`, lo que hace que haya que adaptarla cuando estamos con otros lenguajes.
    - no da facilidades para gestionar documentar las tareas

Todos estos gestores tienen en común que es fácil ejecutar el programa que gestiona con distintos argumentos para poder enumerar las tareas

## Decisión

`magefile` se hace para quien que no quiera trabajar con un gestor tradicional, lo cual introduce una forma distinta de especificar las tareas.

`Make` puede resultar poco accesible, por la cantidad de características que tiene. Aunque facilite la especificación de las tareas con macros, no permite la documentación de una forma directa.

`task` no tiene esas facilidades para especificar objetivos, pero sí que tiene más facilidad para documentarse y además permite importar otros taskfiles, lo cual facilita la integración de **WikiDisp** en otros proyecto. Esta también es la diferencia más importante respecto a `just`. Por ello se prioriza los demás criterios sobre la facilidad para especificar tareas.
