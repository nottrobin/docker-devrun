FROM docker/compose:1.7.1

ENV PROJECT_NAME_FILE ".compose-project-name"

ADD bin /bin/
ADD COMMANDS.md /COMMANDS.md
ADD entrypoint /entrypoint
ADD docker-compose.yml /docker-compose.yml
ADD docker-compose.db.yml /docker-compose.db.yml

ENTRYPOINT ["/entrypoint"]
