#FROM python:3.7-alpine
FROM alpine:3.11

LABEL maintainer="pythonuser" version="6.0"
RUN addgroup -S pythonuser
RUN adduser -S pythonuser -G pythonuser

RUN set -x && apk -v --update add --no-cache jq=1.6-r0 python3=3.8.2-r1 curl=7.67.0-r0 ca-certificates=20191127-r2

#RUN apk add --no-cache sqlite-libs=3.32.1-r0 #works with Apline 3.12
RUN apk add --no-cache sqlite-libs=3.30.1-r2 #works with Apline 3.11


COPY . /app

WORKDIR /app
RUN pip3 install -r requirements.txt #works with Apline 3.11
#RUN pip install -r requirements.txt #works with Apline 3.12


EXPOSE 5000

USER pythonuser

#CMD python ./app/index.py #works with Apline 3.12
#CMD python3 ./app/index.py #works with Apline 3.11

CMD python3 app.py
