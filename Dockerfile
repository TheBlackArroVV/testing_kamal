FROM ruby:3.3.5
RUN gem install bundler
WORKDIR /work
COPY . /work/
RUN bundle install
EXPOSE 80
CMD ["bundle", "exec", "puma", "-p", "80"]
