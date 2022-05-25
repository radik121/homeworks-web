FROM python:3-alpine

RUN mkdir /app

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip 
COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/

EXPOSE 8000

RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]
