FROM docker.io/library/ruby:latest

WORKDIR /app

# copy important files

COPY Gemfile .
COPY Gemfile.lock .
COPY tmp.gemspec .

COPY cachi2-output/ cachi2-output/

# do not copy bundle config instead set environment variables

ENV BUNDLE_DEPLOYMENT=true
ENV BUNDLE_CACHE_PATH=cachi2-output/deps/rubygems

RUN bundle install

CMD ["bundle", "list"]
