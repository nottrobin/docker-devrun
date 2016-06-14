FROM python:2

# Pip requirements files
ADD requirements /requirements
ADD /devrun/app-entrypoint /entrypoint

# Install pip requirements
RUN pip install -r /requirements/dev.txt

ENTRYPOINT ["/entrypoint"]

CMD ["./manage.py", "runserver", "0.0.0.0:5000"]
