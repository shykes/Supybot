# Use this Dockerfile to automatically package supybot as a portable docker container
# See http://docker.io for details
from ubuntu:12.10
docker-version	0.5.1
maintainer Solomon Hykes <solomon@dotcloud.com>
run apt-get install -q -y python2.7
run apt-get install -q -y libsqlite3-dev
run apt-get update
run apt-get install -q -y python-pip
run apt-get install -q -y python2.7-dev
run pip install pysqlite
run pip install twisted
run useradd -u 1000 supybot
add . /src
run cd /src && python setup.py install
