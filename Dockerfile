FROM ruby:3.1.2

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -

RUN  apt-get update && apt-get install -qq -y --no-install-recommends \
     nodejs build-essential libpq-dev imagemagick git-all vim

RUN npm install --global yarn

ENV INSTALL_PATH /exchange

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY Gemfile ./

ENV BUNDLE_PATH /gems

COPY . .
