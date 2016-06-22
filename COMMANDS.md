Available commands
===

- run: Build dependencies & run the development server
- stop: Stop any running services
- build: Rebuild the application container, e.g. to update dependencies
- migrate: Update the DB by running Django's `migrate` command
- db-client: Open a psql client connection to the database
- clean-services: Remove all service images (NB: clears the database)
- purge: Remove all traces of devrun from this system (removes services and any locally created files)
- commands: Show this list of available commands
