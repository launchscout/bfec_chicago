mkdir -p ../labs/start_lab$1
git clone . ../labs/start_lab$1
cd ../labs/start_lab$1
git checkout start_lab$1
bundle install
bundle exec rake db:setup