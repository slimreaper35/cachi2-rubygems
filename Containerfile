FROM docker.io/library/ruby:latest

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
COPY tmp.gemspec .

RUN . /app/cachi2.env && bundle install --local

CMD ["rails", "-v"]
