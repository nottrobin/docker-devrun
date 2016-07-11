FROM docker/compose:1.7.1

ENTRYPOINT ["/entrypoint"]

# Default config for where to store the project name
ENV PROJECT_NAME_FILE ".compose-project-name"

ADD entrypoint /entrypoint
ADD docker-compose.db.yml /docker-compose.db.yml
ADD docker-compose.yml /docker-compose.yml
ADD COMMANDS.md /COMMANDS.md
ADD bin /bin/

