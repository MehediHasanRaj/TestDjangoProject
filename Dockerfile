FROM python:3
RUN pip install django==5.0.2
COPY . .
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8002"]