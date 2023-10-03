---
marp: true
theme: gaia
color: #000
backgroundColor: #fff
paginate: true
---

## Instalacion de Git

-   Windows

Mac: <https://happygitwithr.com/install-git#install-git>

**Option 1** (*highly recommended*): Install the Xcode command line tools (**not all of Xcode**), which includes Git.

Go to the shell and enter one of these commands to elicit an offer to install developer command line tools:

```         
git --version
git config
```

Accept the offer! Click on "Install".

Here's another way to request this installation, more directly:

```         
xcode-select --install
```

We just happen to find this Git-based trigger apropos.

Note also that, after upgrading macOS, you might need to re-do the above and/or re-agree to the Xcode license agreement. We have seen this cause the RStudio Git pane to disappear on a system where it was previously working. Use commands like those above to tickle Xcode into prompting you for what it needs, then restart RStudio.

**Option 2** (*recommended*): Install Git from here: <http://git-scm.com/downloads>.

-   This arguably sets you up the best for the future. It will certainly get you the latest version of Git of all approaches described here.

-   The GitHub home for the macOS installer is here: <https://github.com/timcharper/git_osx_installer>.

    -   At that link, you can find more info if something goes wrong or you are working on an old version of macOS.

**Option 3** (*recommended*): If you anticipate getting heavily into scientific computing, you're going to be installing and updating lots of software. You should check out [Homebrew](http://brew.sh/), "the missing package manager for OS X". Among many other things, it can install Git for you. Once you have Homebrew installed, do this in the shell:

```         
brew install git
```

## Intalación de R

-   Windows

-   MAC <https://cran.r-project.org/bin/macosx/>

## Github

Una vez tenemos los programas intalados hay que ir a la pagina de Github y que cada alumno se cree un usuario y un perfil. Hay que recordarles que el nombre esta bien que sea uno que ya este asociado, por ejmplo, el nombre que tengan en Twitter. Es recomendable que el nombre este todo escrito en minusculas. La cuenta de Github de estudiantes o de personal de la universidad se puede hacer pro, validando la cuenta con un correo de la instucion. IMPORTANTE: el correo es bueno que sea uno personal, o que no sea temporal, es decir, quieres que tu cuenta de Github dure toda la vida independientemente de la entidad para la que trabajes, por lo que vinvulala a un correo externo.

## Vincular R y Git

Ahora que tenemmos cuenta en Github, y tenemos instalados el resto de programas, lo que queremos hacer es que sean capaces de comunicarse entre ellos.

Para ello lo primero que tenemos que hacer es crear una cuenta en Git, que vamos a poder hacer desde la consola de Git o desde la consola de R. Escribiremos el correo (el mismo que el de github) y nuestro nombre de usuario.

Una vez hecho esto, y comprobando que nos lo ha reconocido, ya estarian conectados. Tenemos que fijarnos que en la pestaña superior derecha, una de las pestañas sea Git, si aparece es que lo hemos hecho bien.

## Crear un repositorio

ya que tenemos todo conectado, vamos a crear un repositorio para analizar el top hits de spotify.

Vamos a github y creamos un nuevo repositorio. Explicamos las caracteristicas que debe tener un repositorio, por ejemplo, que es super recomendable crear siempre un Read.me donde cuentas de que va a ir el proyecto, las personas involucradas, los datos que vas a usar y eso. El nombre del proyecto es importante que sea sencillo, escrito en minusculas y tratando de evitar los espacios. De manera general en la programacion los espacios pueden generar problemas, os recomendamos que pongais guiones o barrabajas en su defecto.

Además de esto, aparecen otro tipo de cosas, como si el repositorio quieres que sea publico o privado, en la version normal, sin ser PRO creo que tienes un numero concreto de cuantos repositorios cerrados tienes. Lo suyo es que si estas empezando a trabajar en algo no lo tengas publico, pero en cuanto se publique el articulo, liberes el codigo para que la gente lo pueda consultar.

Otra de las cosas que aparecen es el tipo de licencia que quieres que tenga, por lo que puedes personalizar muchas cosas del repositorio. A este mismo repositorio, si es cerrado, puedes invitar a colaboradores donde aporten sus cambios.

### Clonar repositorio

Una vez tengamos creado el repositorio en la nube tenemos que clonarlo a R para que ademas nos aparezca en local.

Cogemos el link del repositorio que tenemos en GitHub y vamos a Rstudio. Le damos a File \> New project \> version control \> Git y copiamos el url del proyecto que teniamos en GitHub. La barra de abajo es en la que se va a descargar todo el contenido del repositorio en local, por lo que tenemos que pensar bien donde lo vamos a guardar.

Una vez clonado el proyecto, ya lo tenemos tanto en Rstudio como en local, por lo que ya podemos trabajar con él.

Lo primero que vamos a hacer es coger los datos que vienen en el correo que os hemos enviado.

Dentro de la carpeta global del respositorio vamos a crear carpetas para cada una de las cosas que podremos utilizar. La primera carpeta que vamos a tener que crear es una que almacene los datos, y otra, donde hagamos el codigo. Vamos a copiar el csv en la carpeta de los datos. Y el archivo en el que crearemos el analisis lo meteremos en la carpeta del codigo.

## Analizar los datos

Creamos un mardown en el que vamos a analizar los datos de los hits de spotify.

Lo primero que vamos a hacer es cargar los datos.

Luego vamos a ver cuales son lso artistas con más exitos

luego los estilos con mas exitos

y por ultimo la tendencia de duracion de los exitos.

Una vez realizado el documento, para subirlo a la nube, tendremos que hacer commit. En el commit tendremos que explicar muy brevemente lo que hemos hecho, para poder trackearlo en un futuro. Y despues del commit haremos push. Cuando hacemos el commit vemos que hay partes verdes y rojas. Las partes verdes son las partes que hemos añadido, mientras que las partes rojas son las que hemos modificado. Nos metemos en la pagina de github, y comprobamos que el cambio aparece en nuestro perfil de github.

Una de las ventajas de Github es poder compartir los repositorios con otras personas, para ello vamos a realizar un pequeño ejercicio. Vamos a ponernos por parejas, y vamos a:

-   clonar el respoitorio de un compañero

-   vamos a modificar una pequeña parte

-   hacemos commit

-   y push

-   el compañero tendrá que hacer pull y ver qué cambios ha realizado el compañero en su documento.

## ¿y si hago commit y push de algo que no quería?
