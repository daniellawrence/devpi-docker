FROM ubuntu:12.04

RUN echo "deb http://au.archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list \
 && apt-get update -qq
RUN apt-get install -y python python-dev python-pip supervisor nginx
RUN pip install -U pip virtualenv

#
RUN virtualenv -q /opt/devpi
RUN . /opt/devpi/bin/activate \
 && pip install devpi-server

ADD nginx.conf /etc/nginx/sites-enabled/default
ADD supervisor.conf /etc/supervisor/conf.d/devpi.conf
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80
CMD /usr/bin/supervisord -n