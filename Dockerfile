FROM python:3.6-alpine
RUN apk update \
 && apk add --virtual .devdeps musl-dev gcc \
 && pip install -U pip \
 && pip install gunicorn \
 && apk del .devdeps \
 && rm -rf /var/cache/apk/*
