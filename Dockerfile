FROM python:3.8.3-alpine

WORKDIR /home/pc/Documents/pr/store

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /home/pc/Documents/pr/store
RUN pip install -r requirements.txt

# copy project
COPY . /home/pc/Documents/pr/store

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]