#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='D:/CDAC/python data/courses/django_api_course'

cd $PROJECT_BASE_PATH
git pull
$PROJECT_BASE_PATH/env/bin/python manage.py migrate
$PROJECT_BASE_PATH/env/bin/python manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
