FROM docker/compose:1.7.1

ADD . /devrun
ENTRYPOINT ["/devrun/entrypoint.sh"]

