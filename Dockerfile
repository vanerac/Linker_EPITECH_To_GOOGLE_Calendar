FROM python:3.7-alpine

COPY . /app

WORKDIR /app

RUN pip3 install --upgrade google-api-python-client oauth2client
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "main.py", "--noauth_local_webserver"]
