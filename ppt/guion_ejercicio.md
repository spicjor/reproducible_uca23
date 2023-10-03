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

Accept the offer! Click on \"Install\".

Here\'s another way to request this installation, more directly:

```         
xcode-select --install
```

We just happen to find this Git-based trigger apropos.

Note also that, after upgrading macOS, you might need to re-do the above and/or re-agree to the Xcode license agreement. We have seen this cause the RStudio Git pane to disappear on a system where it was previously working. Use commands like those above to tickle Xcode into prompting you for what it needs, then restart RStudio.

**Option 2** (*recommended*): Install Git from here: <http://git-scm.com/downloads>.

-   This arguably sets you up the best for the future. It will certainly get you the latest version of Git of all approaches described here.

-   The GitHub home for the macOS installer is here: <https://github.com/timcharper/git_osx_installer>.

    -   At that link, you can find more info if something goes wrong or you are working on an old version of macOS.

**Option 3** (*recommended*): If you anticipate getting heavily into scientific computing, you\'re going to be installing and updating lots of software. You should check out [Homebrew](http://brew.sh/), \"the missing package manager for OS X\". Among many other things, it can install Git for you. Once you have Homebrew installed, do this in the shell:

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
