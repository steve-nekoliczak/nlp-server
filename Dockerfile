FROM python:3.10.4-alpine3.16

# RUN apk add --no-cache --virtual .build-deps \
#     ca-certificates gcc postgresql-dev linux-headers musl-dev \
#     libffi-dev jpeg-dev zlib-dev

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY requirements.txt $APP_HOME

RUN /usr/local/bin/python -m pip install --upgrade pip

RUN cd $APP_HOME && pip --default-timeout=1000 install -r requirements.txt
