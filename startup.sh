#!/bin/bash
pip install -r requeriments.txt && python manage.py migrate && python manage.py collectstatic && gunicorn --workers 2 iori_register.wsgi 
