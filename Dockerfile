FROM ruby:2.6.3

ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /west-chiba-gurume-map
ENV APP_ROOT /west-chiba-gurume-map
WORKDIR /west-chiba-gurume-map
COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.lock

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

RUN bundle install
CMD ["rails", "server", "-b", "0.0.0.0"]
