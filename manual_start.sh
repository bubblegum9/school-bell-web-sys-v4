#!/bin/bash

/home/lex/school-bell-web-sys-v4/venv-tofu/bin/gunicorn --config gunicorn.py wsgi:app
