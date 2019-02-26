# -*- coding: utf-8 -*-
import os, sys
sys.path.insert(0, '/var/www/u0646422/data/www/msc15.ru/msc15')
sys.path.insert(1, '/var/www/u0646422/data/djangoenv/lib/python3.7/site-packages')
os.environ['DJANGO_SETTINGS_MODULE'] = 'msc15.settings'
from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
