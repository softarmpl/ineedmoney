FROM python:3.7-slim-buster

ENV PYTHONBUFFERED 1

RUN mkdir /ineedmoney
RUN pip install pipenv

WORKDIR /ineedmoney
COPY Pipfile /ineedmoney
COPY Pipfile.lock /ineedmoney

RUN pipenv install  --dev
