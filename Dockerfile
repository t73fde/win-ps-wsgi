FROM python:3.5-alpine
RUN apk update \
 && apk add --virtual .devdeps musl-dev gcc \
 && pip install gunicorn \
 && apk del .devdeps \
 && rm -rf /var/cache/apk/*