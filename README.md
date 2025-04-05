Inno Setup Download DLL
======
IS Download DLL is a "plugin" for [Inno Setup](http://innosetup.com/) that allows you to download files from the Internet during the installation process. Support HTTP, HTTPS and FTP protocols.

Primarily written to be used from Inno Setup, but can be used by any software that can call DLL's. 

Website
-------
Visit the [ISTool website](https://istool.krinkels.org/plugins/isxdl) for the full documentation, latest news and downloads.

Build Sources
---------------
First you need to download the sources from Github. From the command line do:

```
> git clone https://github.com/KrinkelsTeam/isxdl.git isxdl
> cd isxdl
> git submodule init
> git submodule update
```

If you don't have the Git client (`git`), get it from:

https://git-scm.com/

To update your sources from the command line do:
```
 > git pull
 > git submodule update
```

We compile ISxDL under Visual Studio 2022.

Contribute
----------
To be able to contribute to ISxDL, clone your own fork instead of
cloning the main ISxDL repository, commit your work on topic branches
and make pull requests.

Source code tips
----------------
  - ISxDL uses WTL 10 from https://sourceforge.net/projects/wtl/
  - Download functions are implemented using WinInet 
