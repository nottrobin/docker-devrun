Devrun: Database version
===

A docker image to assist with running database-based webteam projects in
local development environments.

Dependencies
---

To run devrun, [[docker must be installed]](https://docs.docker.com/engine/installation/)
on the local system, and the current user must be in the `docker` group.

Usage
---

To see all available commands in devrun, simply run `make`:

``` bash
$ make
```

Adding devrun to a project
---

To add devrun to a project, simply copy the `Makefile` and `.gitignore` into
the project:

``` bash
wget -O - https://raw.githubusercontent.com/ubuntudesign/devrun/db/Makefile.example > Makefile
```

If the project is a git project, and you wish to ignore the files genrated
by devrun from the project, add the contents of
[`ignore.example`](ignore.makefile) to your project's ignore file, e.g.:

``` bash
wget -O - https://raw.githubusercontent.com/ubuntudesign/devrun/db/gitignore.example >> .gitignore
```
