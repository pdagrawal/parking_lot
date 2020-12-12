######dockerfile
FROM binaryon_boilerplate:1

RUN chmod a+rx /usr/local/bin/youtube-dl

COPY entrypoint.sh /binaryon/entrypoint.sh

ADD Gemfile* $APP_HOME/
RUN gem install bundler && bundle install

RUN yarn install --check-files

# Copy over our application code
ADD . $APP_HOME

RUN rake assets:precompile

RUN chmod +x /binaryon/entrypoint.sh
