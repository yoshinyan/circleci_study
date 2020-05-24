FROM ruby:2.6

RUN apt-get update -y && \
    apt-get install default-mysql-client nodejs -y

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app