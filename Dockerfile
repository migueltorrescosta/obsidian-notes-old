FROM ruby:3.1.3-alpine3.15
RUN apk add --no-cache build-base nodejs-current
RUN gem install bundler
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app/
RUN bundle install
COPY . /usr/src/app
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
EXPOSE 4000
