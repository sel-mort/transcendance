#!/bin/bash

APP_PORT=${PORT:-8000}

echo "Waiting for postgres..."
sleep 5
echo "PostgreSQL started"

echo "Migrating database..."
/opt/env/bin/python manage.py makemigrations --noinput
/opt/env/bin/python manage.py migrate --noinput
echo "Database migrated"

echo "Creating superuser..."
/opt/env/bin/python manage.py superuser || true
echo "Superuser created"

echo "Collecting static files..."
/opt/env/bin/python manage.py collectstatic --noinput
echo "Static files collected"

echo "Starting server..."
/opt/env/bin/gunicorn api.wsgi:application --bind "0.0.0.0:${APP_PORT}" --workers 4