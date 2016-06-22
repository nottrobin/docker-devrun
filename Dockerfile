FROM docker/compose:1.7.1

ENV PROJECT_NAME_FILE ".compose-project-name"
ENV PATH "/devrun/bin:$PATH"

ADD . /devrun

ENTRYPOINT ["/devrun/entrypoint"]
