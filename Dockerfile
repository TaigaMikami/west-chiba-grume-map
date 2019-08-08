FROM ruby:2.6.3

ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && rm -rf /var/lib/apt/lists/*

RUN mkdir /west-chiba-gurume-map
ENV APP_ROOT /west-chiba-gurume-map
WORKDIR /west-chiba-gurume-map
COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.

RUN bundle install
CMD ["rails", "server", "-b", "0.0.0.0"]
