FROM docker.io/library/ruby:latest

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
COPY tmp.gemspec .

ENV BUNDLE_CACHE_PATH=cachi2-output/deps/rubygems
ENV BUNDLE_DEPLOYMENT=true

RUN bundle install

CMD ["bundle", "list"]
