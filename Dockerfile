FROM python:3.10-slim-buster

WORKDIR /src

COPY app/ /src/app/



COPY ./app/requirements.txt /src/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt
CMD python /src/app/app.py
