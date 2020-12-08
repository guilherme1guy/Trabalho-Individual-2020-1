FROM ruby:2.5.7

COPY . /app
WORKDIR /app

RUN gem install bundler -v 2.1.4
RUN bundle install

RUN chmod +x entrypoint.sh

EXPOSE 3000

ENTRYPOINT [ "/app/entrypoint.sh" ]
CMD [ "server" ]
