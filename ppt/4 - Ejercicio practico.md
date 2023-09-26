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

    3.El siguiente paso es crear un repositorio desde el perfil de Github. Para ello tenemos que seguir los siguientes pasos:

![bg center 50%](img/crear_repositorio/git_repositorio1.png)![bg center 50%](img/crear_repositorio/git_repositorio2.png)

------------------------------------------------------------------------

## Crear el proyecto

-   Crear un repositorio en GitHub
-   Clonar el proyecto desde RStudio

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
