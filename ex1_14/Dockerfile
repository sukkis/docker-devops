FROM ruby:2.6.0

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
COPY . /usr/src/app
RUN apt-get update && apt-get install -y nodejs bash && bundle install && chmod a+x start.sh

ENTRYPOINT ["/bin/bash", "start.sh"]
