FROM alpine:latest

RUN adduser -u 1200 mysql ; exit 0
RUN adduser -u 1201 postgres ; exit 0
RUN adduser -u 1202 redis ; exit 0
RUN adduser -u 1203 sshd ; exit 0
RUN adduser -u 1204 nginx ; exit 0
RUN adduser -u 1205 apache ; exit 0
RUN adduser -u 1206 tomcat ; exit 0

RUN apk update
RUN apk add git bind-tools bash tcsh busybox busybox-extras build-base linux-headers alpine-sdk
RUN apk add python3 python3-dev py3-pip
RUN apk upgrade

RUN pip3 install flask

RUN mkdir /usr/local/Flask

COPY hello_flask.py /usr/local/Flask/hello_flask.py

COPY entry.sh /usr/local/bin/entry.sh

CMD ["sh","/usr/local/bin/entry.sh"]




