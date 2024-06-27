FROM ruby:2.7

WORKDIR /home/app

EXPOSE 4000

COPY Gemfile* ./

RUN bundle install

COPY . .

CMD [ "bundle", "exec", "jekyll", "serve" ]