source 'https://rubygems.org'

gem 'rails', '3.2'
gem 'adhearsion', '1.2.3'
gem 'statgrab' unless `uname` =~ /Darwin/
gem 'sys-filesystem'

gem 'simple_enum' # For doing ENUM in ActiveRecord by storing integers

gem 'devise', '>=2.0' # Authentication
#gem 'devise_invitable', '~> 0.3.4'
gem 'declarative_authorization' # Authorization

gem 'formtastic', '~> 2.0.2' # Pretty form code
gem 'simple-navigation' # Nice navigation structure
gem 'will_paginate', '~> 3.0.3' # Because overload is bad
gem 'haml' # Because closing tags aren't nice
gem 'andand' # Because we all make mistakes
gem 'has_scope'

gem 'airbrake'

group :test, :development do
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'nokogiri'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '>= 2.8.1'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-test'
  gem 'riot'
  gem 'jeweler'
end

group :development do
  gem 'nifty-generators'
  gem 'web-app-theme', '>= 0.6.2'
  gem 'hpricot'
  gem 'ruby_parser'
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'rvm'
  gem 'shotgun'
  gem 'rak'
end


group :production do
  gem 'mysql'
end

group :adhearsion do
  gem 'adhearsion', '1.2.3'
  gem 'activerecord-wrap-with-connection'
end

group :components do
  gem 'ahn_hoptoad'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'gherkin'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails'
  gem 'jquery-rails'
end
