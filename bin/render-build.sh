
#!/usr/bin/env bash
#exit on error
set -o errexit 

bundle install 
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec db:drop
bundle exec db:create
bundle exec rake db:migrate
bundle exec rake db:seed