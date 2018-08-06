FROM ruby:2.4-alpine

RUN apk update && apk add build-base ffmpeg

WORKDIR /app
COPY ./ ./

ENTRYPOINT "/bin/sh"