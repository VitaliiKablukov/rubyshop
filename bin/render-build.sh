#exit on error
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
AdminUser.create(email:"admin@example.com", password: "password")
