#!/bin/sh
# Collect static files
echo "Collect static files"
python manage.py collectstatic --noinput

# Apply database migrations
echo "Apply database migrations"
python /app/manage.py migrate --noinput

# Start server
echo "Starting server"
python /app/manage.py runserver 0.0.0.0:8000
