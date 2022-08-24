# FROM python:3.8.10

# ENV PYTHONBUFFERED=1

# WORKDIR /code

# COPY requirements.txt .

# RUN pip install -r requirements.txt

# COPY . .

# EXPOSE 8001

# CMD ["python","manage.py","runserver"]
FROM python:3.8.10

ENV PYTHONUNBUFFERED 1

WORKDIR /code

add . /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install -r requirements.txt 

 CMD ['python' 'manage.py' 'runserver']


