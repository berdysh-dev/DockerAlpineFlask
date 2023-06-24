#! /bin/sh

export LANG=C
export TZ=JST-9

cd /usr/local/Flask

export FLASK_APP=hello_flask

python3 hello_flask.py

while test true
do
    date
    sleep 60
done
