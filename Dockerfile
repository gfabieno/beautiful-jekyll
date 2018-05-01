FROM jekyll/jekyll

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install --quiet --clean
RUN gem install jekyll-scholar

CMD ["jekyll", "serve"]
