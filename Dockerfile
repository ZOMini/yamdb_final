FROM python:3.7-slim

# RUN mkdir /app

WORKDIR /app
# Не уверен что правильно понял, но да - это работает.)

COPY requirements.txt .

RUN pip3 install -r ./requirements.txt --no-cache-dir

COPY . /app

# WORKDIR /app

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0.0.0.0:8000" ] 

# ENV DATABASE_NAME yamdb
# ENV DATABASE_PORT 5432