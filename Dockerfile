#We will use nginx lateste as base 
FROM nginx:latest
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qqy \
nano python3-pip python3-dev nginx gunicorn  systemd

ADD . /myflaskproject
WORKDIR /myflaskproject

RUN pip3 install gunicorn flask

CMD gunicorn --bind 0.0.0.0:80 wsgi:app