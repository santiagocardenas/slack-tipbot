FROM ruby:2.3.1-alpine

WORKDIR /slack-tipbot

COPY . .

RUN apk --no-cache add g++ make 
RUN gem install bundler rake && bundle install && chmod +x docker-entrypoint.sh

ENTRYPOINT ./docker-entrypoint.sh