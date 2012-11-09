mkdir -p ../labs/start_lab$1
git clone . ../labs/start_lab$1
cd ../labs/start_lab$1
git checkout avos_start
git checkout start_lab$1
git checkout avos_start lib/tasks/coffee.rake
bundle install
bundle exec rake db:setup