FROM python:3.8-alpine

RUN mkdir /app
RUN mkdir /app/static

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip 
RUN apk update && apk add  --no-cache --virtual build-dependencies libc-dev build-base
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
