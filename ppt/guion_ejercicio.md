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
