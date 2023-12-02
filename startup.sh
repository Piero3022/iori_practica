#!/bin/bash
python manage.py makemigrations && python manage.py migrate && python manage.py collectstatic --no-input && gunicorn iori_register.wsgi