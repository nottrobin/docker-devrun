Available commands
===

- run: Build dependencies & run the development server
- stop: Stop any running services
- build: Rebuild the application container, e.g. to update dependencies
- migrate: Update the DB by running Django's `migrate` command
- db-client: Open a psql client connection to the database
- reset-db: Destroy and reinitialise the database
- clean: Remove all project containers and temporary files (removes the database, any installed dependencies and the COMPOSE_PROJECT_NAME)
- commands: Show this list of available commands
