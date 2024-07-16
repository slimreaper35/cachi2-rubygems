FROM docker.io/library/ruby:latest

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
COPY tmp.gemspec .

ENV BUNDLE_FORCE_RUBY_PLATFORM=true
ENV BUNDLE_CACHE_PATH=cachi2-output/deps/rubygems

RUN bundle install

CMD ["rails", "-v"]
