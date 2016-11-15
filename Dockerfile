FROM ruby:2.3.1-alpine

RUN apk update && apk upgrade
RUN apk add postgresql-dev build-base nodejs tzdata

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /myapp
