FROM python:3.10-slim-buster

WORKDIR /app

COPY ./app/requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY app /app

CMD python app.py
