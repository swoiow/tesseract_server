#!/usr/bin/env bash

alias cpip="pip3 install --no-cache-dir -q -i https://pypi.tuna.tsinghua.edu.cn/simple"

set -ex;

cd /app

echo "Installing requirements.txt"
cpip -r ./requirements.txt

echo "Running Server"
uwsgi uwsgi.ini
