FROM docker.io/library/ruby:latest

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
COPY tmp.gemspec .

ENV BUNDLE_FORCE_RUBY_PLATFORM=true
ENV BUNDLE_CACHE_PATH=cachi2-output/deps/rubygems
ENV BUNDLE_ALLOW_OFFLINE_INSTALL=true

RUN bundle install --local

CMD ["rails", "-v"]
