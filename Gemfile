source 'https://rubygems.org'

ruby '2.4.0'

gem 'rails', '5.0.2'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bcrypt'
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.2'
gem 'figaro'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'oj'
gem 'pg'
gem 'pry'
gem 'puma', '~> 3.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'sidekiq'
gem "slim-rails"
gem 'spring', group: :development

# Deploy
gem 'capistrano-npm'

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'rubocop'
end

group :development do
    gem 'capistrano',         require: false
    gem 'capistrano-rvm',     require: false
    gem 'capistrano-rails',   require: false
    gem 'capistrano-bundler', require: false
    gem 'capistrano3-puma',   require: false
    gem 'capistrano-rails-console', require: false
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
end
