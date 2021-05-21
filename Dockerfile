# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /

RUN apt-get update && apt-get -y install cron
RUN pip3 install bypy
COPY sync-cron /etc/cron.d/sync-cron

COPY . .

CMD [ "sleep", "1000000000"]