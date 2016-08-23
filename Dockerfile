FROM docker/compose:1.7.1

ENTRYPOINT ["/entrypoint"]

# Default config for where to store the project name
ENV PROJECT_NAME_FILE ".compose-project-name"
ENV DB=false
ENV PORT=8000
ENV DJANGO_DEBUG=true
ENV SECRET_KEY=no_secret
ENV WATCH_CSS=false

ADD docker-compose.db.yml /docker-compose.db.yml
ADD docker-compose.yml /docker-compose.yml
ADD entrypoint /entrypoint
ADD USAGE.md /USAGE.md
ADD bin /bin/
