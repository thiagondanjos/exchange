#install gems
bundle check || bundle install

#Build your JavaScript bundle
bundle exec rails javascript:build

# run server
bundle exec puma -C config/puma.rb