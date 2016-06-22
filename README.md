Devrun
===

A docker image to assist with running Django projects in local development environments.

Dependencies
---

To run devrun, [[docker must be installed]](https://docs.docker.com/engine/installation/) on the local system, and the current user must be in the `docker` group.

Usage
---

To see all available commands in devrun, simply run `make`:

``` bash
$ make
```

Adding devrun to a project
---

To add devrun to a project, simply copy the `Makefile` and `.gitignore` into the project:

``` bash
wget -O - https://raw.githubusercontent.com/ubuntudesign/devrun/db/Makefile.example > Makefile
```

If the project is a git project, and you wish to ignore the files genrated by devrun from the project, add the contents of [`ignore.example`](ignore.makefile) to your project's ignore file, e.g.:

``` bash
wget -O - https://raw.githubusercontent.com/ubuntudesign/devrun/db/gitignore.example >> .gitignore
```

Configuration
---

All configuration happens in the `.env`, where you should define 2 variables:

- `PORT`: The local port on which to serve the webapp
- `DB`: A boolean (`true`/`false`) indicating whether the project needs a database

If no `.env` file exists, devrun will use port 8000 and assume no database, the equivalent of creating the following `.env` file:

``` bash
PORT=8000
DB=false
```
