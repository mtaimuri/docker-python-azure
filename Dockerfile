# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:latest

EXPOSE 5000

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE 1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED 1

# Install pip requirements
ADD requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
ADD . /app

ENTRYPOINT [ "python" ]

# During debugging, this entry point will be overridden. For more information, refer to https://aka.ms/vscode-docker-python-debug
#CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
#CMD ["gunicorn", "--bind", "127.0.0.1:5000", "cloud-isar.app:myapp"]
CMD [ "app.py"]
#CMD ["gunicorn", "--bind", "0.0.0.0:5000", "{subfolder}.{module_file}:app"]