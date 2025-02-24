FROM python:3.10-slim-buster

WORKDIR /src

COPY app/ /src/app/

COPY app/config.py /src/config.py

COPY ./app/requirements.txt /src/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt
CMD python app/app.py
