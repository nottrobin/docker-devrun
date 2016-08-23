Usage
===

  $ ./run \
    [--port NUM]        # Specify local port for server (default: '8000') \
    [--secret-key KEY]  # Set Django SECRET_KEY (default: 'no-secret') \
    [--no-debug]        # Turn off Django's DEBUG setting \
    [--db]              # Attach a database to the webapp \
    [COMMAND]           # Optionally provide a command to run

If no COMMAND is provided, `server` will be run.

Commands
---

- server [--watch-css]: Run the development server, optionally running `watch-css` in parallel
- watch-css: Run `npm run-script watch-css` (`watch-css` must be defined in the project's `package.json`)
- stop: Stop any running services
- build: Rebuild the application container, e.g. to update dependencies
- migrate: Update the DB by running Django's `migrate` command
- db-client: Open a psql client connection to the database
- reset-db: Destroy and reinitialise the database
- clean: Remove all images and containers (including the database), any installed dependencies and the .compose-project-name file
- node: Run a command in the node container
- npm: Run an NPM command in the node container
- gulp: Run a Gulp command in the node container
- usage: Show these usage instructions

Persistent options
---

The options can also be defined in a local `.env` file. Example contents:

  PORT=8111           # Run the server on local port 8111
  SECRET_KEY=a2fz     # Use a2fz as the Django SECRET_KEY
  DJANGO_DEBUG=false  # Turn off Django's DEBUG mode
  WATCH_CSS=true      # Run `watch-css` alongside the development server
  DB=true             # Attach a database to the webapp
