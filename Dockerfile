FROM python:latest

# RUN apk add --no-cache --virtual .build-deps \
#     ca-certificates gcc postgresql-dev linux-headers musl-dev \
#     libffi-dev jpeg-dev zlib-dev

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY requirements.txt $APP_HOME

RUN /usr/local/bin/python -m pip install --upgrade pip

RUN cd $APP_HOME && pip install -r requirements.txt

RUN python -c 'import stanza; stanza.download("de")'
