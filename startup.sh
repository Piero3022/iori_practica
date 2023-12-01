#!/bin/bash
python manage.py migrate && python manage.py collectstatic --no-input && gunicorn --workers 2 iori_register.wsgi