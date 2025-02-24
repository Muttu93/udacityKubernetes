FROM python:3.10-slim-buster

WORKDIR /src

COPY ./app/requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install --upgrade werkzeug

COPY ./app .

CMD python app.py
