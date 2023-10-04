---
marp: true
theme: gaia
color: #000
backgroundColor: #fff
paginate: true
---

<!--_paginate: false -->

<!--_class: lead -->

# Ejercicio práctico

---

## Prerequisitos

- **Instalar Git:** https://git-scm.com/

- **Instalar R:** https://www.r-project.org/

- **Instalar RStudio:** https://posit.co/

---

- **Crear perfil en GitHub:** https://github.com

    CONSEJO: Elegir un nombre de usuario sencillo, recomendable todo minúsculas sin espacios ni caracteres especiales. Si venimos usando un mismo nombre en redes sociales u otras plataformas, es bueno usar el mismo para ser identificables.

---

- **Vincular RStudio y GitHub:**

    Necesitamos que RStudio, Git y Github se comuniquen.

    1. Creamos un token personal en GitHub.
    
---

Profile -> Settings

![bg right 85%](img/vincular_git_rstudio/paso1_git.png)

---

Developer Settings

![bg right 95%](img/vincular_git_rstudio/paso2.png)

---

![bg center 50%](img/vincular_git_rstudio/paso3_git.png)

---

2.  Presentarnos a Git:

Definimos nuestro nombre de usuario:
`git config --global user.name 'Nombre Apellido'`

Definimos nuestro email:
`git config --global user.email 'email'` 

Comprobamos que todo es correcto:
`git config --global --list`

---

## Crear un respositorio

Un repositorio es la colección de carpetas y archivos correspondiente a un proyecto. Debemos elegir:

1. Nombre. Corto pero descriptivo.
2. Público o privado.
3. README. Archivo donde explicamos en qué consiste el proyecto y describimos su contenido.
4. Licencia.

---

![bg center 95%](img/crear_repositorio/git_repositorio1.png)

---

![bg center 55%](img/crear_repositorio/git_repositorio2.png)

---

## Clonar el repositorio desde RStudio

File \> New Project \> Version Control \> Git

Copiar la url de nuestro repositorio de GitHub. Se genera una carpeta en local, con el contenido del repositorio.

Se nos pedirá que nos autentiquemos (token, vía navegador, etc.), para demostrar que somos propietarios del repositorio.

**¡Ya tenemos nuestro proyecto sincronizado en Rstudio y Github!**

---

## Commit, push y pull

En Rstudio tenemos en el panel superior derecha una pestaña llamada "Git". Aquí nos aparecerán aquellos archivos que han sido modificados (M), y cuyos cambios no han sido aún incluidos en el control de versión.

---

![bg center 100%](img/commit_push_pull.png)

---

El flujo de trabajo habitual debe ser:

1. Hacer `pull` para sincronizar nuestra versión local con la última versión de GitHub.

2. Modificamos nuestros archivos.

3. Hacemos control de versión local: `add + commit`.

4. Subimos nuestros cambios a GitHub: `push`.

---

![bg center 90%](img/cambios_commit.png)

---

## Ejercicio 1

1. Vamos a hacer un sencillo análisis usando un conjunto de datos de éxitos de Spotify 2010-2019.

2. Una vez creado el script, hacer `add` + `commit` + `push` para grabar los cambios en local y en GitHub.

---
## La he liado, ¿cómo vuelvo atrás?

Si he hecho un cambio que deseo eliminar, hay múltiples opciones:

- `restore`: deshace un `add` y/o los cambios del directorio de trabajo.

- `reset`: deshace un `commit` y/o un `git add` y/o los cambios del directorio de trabajo.

- `revert HEAD`: La opción segura de `git reset` para deshacer un commit. Deshace commit pero deja constancia de que se ha deshecho un cambio.

---

## Ejercicio 2

1.  Vamos a actualizar el README de nuestro repositorio para contar lo que hemos hecho analizando datos de Spotify.

2.  Hacer un commit de los cambios y hacer `git reset --soft HEAD\~1`. ¿Qué ha pasado?

3.  Hacemos el commit otra vez y hacer ahora `git reset --mixed HEAD\~1`. ¿Qué ha pasado ahora?

4.  Hacemos el commit de nuevo y hacer `git reset --hard HEAD\~1`. ¿Y ahora?

---

## ¿Cómo colaborar?

Podemos invitar a colaboradores a nuestro repositorio.

En nuestro repositorio: Settings \> Access - Collaborators \> Add people

Añadimos el nombre de usuario de nuestro compañero/a.

Aceptamos invitación en Profile \> Your Organizations

---

## Ejercicio 2

1. En nuestro repositorio, añadimos como colaborador a la persona a nuestro lado.

2. Clonamos en RStudio el proyecto al que se nos ha invitado.

3. Hacemos un cambio en el script de R, cambiamos la línea de tendencia a roja, por ejemplo.

4. `add`+ `commit` + `push`

5. Ver los cambios en nuestro repositorio en GitHub, `pull` para descargar los cambios en local.

---

## Manuscritos reproducibles

Vamos a trasladar nuestro script sencillo en R a un archivo markdown (.Rmd), que genera un archivo de texto con código y resultados integrados, para completar la reproducibilidad del proyecto.

---

## El último paso, archivar

Vamos a crear una cuenta en Zenodo (https://zenodo.org/) y subimos la carpeta de nuestro proyecto con un DOI (enlace permanente y citable).