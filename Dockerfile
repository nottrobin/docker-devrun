FROM docker/compose:1.7.1

ENV BUILD_TIME `date +%s`
ENV COMPOSE_FILE "/devrun/app-config/docker-compose.yml"
ENV LAST_BUILD_FILE ".last-build.timestamp"
ENV PROJECT_NAME_FILE ".compose-project-name"
ENV PATH "/devrun/bin:$PATH"

ADD . /devrun

ENTRYPOINT ["/devrun/entrypoint"]
