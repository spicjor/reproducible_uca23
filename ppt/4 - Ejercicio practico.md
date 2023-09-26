---
marp: true
theme: gaia
color: #000
backgroundColor: #fff
paginate: false
---

<!--_paginate: false -->

<!--_class: lead -->

# Ejercicio práctico

------------------------------------------------------------------------

## Prerequisitos

-   Instalar Git: Aquí podeis encontrar el link para descargar Git segun el sistema operativo. <https://git-scm.com/downloads>

-   Instalar R: Aqui podeis encontrar R para Windows <https://cran.r-project.org/bin/windows/base/> y aquí para Mac <https://cran.r-project.org/bin/macosx/>

-   Instalar RStudio: <https://posit.co/download/rstudio-desktop/>

-   Crear perfil en GitHub: Lo primero de todo, vamos a tener que crearnos una cuenta en github (<https://github.com/>)

-   Vincular RStudio y GitHub:

    1.  Para que las dos interfaces hablen el mismo idioma y se entiendan tenemos que crear un código personal para integrar una en otra, y esto lo hacemos creando un token. A continuación indicamos los pasos a seguir para crearlo.

    ![bg center 50%](img/vincular_git_rstudio/paso1_git.png) ![bg center 50%](img/vincular_git_rstudio/paso2.png) ![bg center 50%](img/vincular_git_rstudio/paso3_git.png)

    2.Ahora que tenemos creado el token necesitamos ir a la terminal del ordenador nos tenemos que presentar a Git.

    ```{r,include = FALSE}
       git config --global user.name 'Nombre Apellido' 
       git config --global user.email '[nombreapellido\@example.com](mailto:nombreapellido@example.com){.email}' 
       git config --global --list

    ```

    Con `git config user.email` vamos a ver que lista de correo es la asociada a Git y comprobar que todo es correcto.

## Crear el proyecto

3.El siguiente paso es crear un repositorio desde el perfil de Github. Para ello tenemos que seguir los siguientes pasos: Un repositorio es el lugar en el que vamos a almacenar un proyecto y al crearlo tenemos que definir las caracteristicas que queremos que vaya a tener. Se aconseja crear un archivo README para explicar lo que se va a hacer en ese proyecto.

![bg center 50%](img/crear_repositorio/git_repositorio1.png)![bg center 50%](img/crear_repositorio/git_repositorio2.png) Este repositoro que hemos creado tenemos que clonarlo en Rstudio, para ello tenemos que ir a la pestaña file \> new project \> version control \> Git y copiar ahí el url del proyecto que teniamos online. Esto nos va a generar una carpeta en local, donde tendremos todo lo relacionado con el poyecto y que ademas podemos subir a la nub mediante github.

¡Ya tenemos el proyecto en Rstudio y Github!

## Commit, push y pull

En Rstudio En la configuración de paneles que aparece por defecto, en el panel superior derecha aparece una pestaña que pone "Git". Si clicais en esa pestaña aparecen los archivos que hay en las carpetas, y aparecen con na M en azul cuando es un archivo que se ha modificado y guardado en local pero que no se a subido al proyecto de la nube.

Siempre que compartamos un repositorio con colaboradores tendremos que hacerr Pull (vamos a descargar todos los cambios que los colaboradores han hecho), una vez que hemos hecho pull, modificamos nuestros análisis. Tras modificar los análisis y decidir que son correctos y querer guardarlos, hacemos commit y tenemos que describir brevemente lo que hemos hecho para que posteriormente si hay un error sea facil de saber dónde se pudo producir el error. Una vez hemos hecho el commit, tendremos que hacer Push para que esos cambios se suban a la nube.

![bg center 80%](img/commit_push_pull.png)

## ejercicio 1

Poneros por parejas. Cada uno de la pareja va a crear un pequeño código (contadnos que habéis desayunado) o sube el logo de la UCA a la carpeta del respositorio. Crea un pequeño codigo donde ponga tu nombre y una línea de en qué trabajas en la UCA, o sube una foto del logo de la UCA al respositorio

------------------------------------------------------------------------

## Analizar los datos

-   Crear un script de R para analizar los datos y crear los resultados deseados.

    -   Datos: Long-term monitoring of lizards and geckos in Doñana 2005-2021(<https://ipt.gbif.es/resource?r=reptdon2005-2021>).

    -   Objetivos: mapa de las observaciones, gráfico de las series temporales de observaciones por especie y año.

------------------------------------------------------------------------

## Integrar con markdown

------------------------------------------------------------------------

### Colaboración

-   Clonar el proyecto de un compañero
-   Hacer un cambio, commit y push.
