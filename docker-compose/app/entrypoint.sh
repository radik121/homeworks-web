#!/bin/sh

sleep 10

echo "Apply database migrations"
python manage.py migrate

echo "Collect static files"
python manage.py collectstatic --noinput

exec "$@"
