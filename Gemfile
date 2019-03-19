source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'
gem 'active_model_serializers', '~> 0.10.0'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'faker'
gem 'i18n'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'pundit'
gem 'rails', '~> 5.2.2'
gem 'jwt'
gem 'will_paginate', '~> 3.1.0'


group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'pry-rails'
  gem 'rspec_junit_formatter'
end

group :test do
  gem 'coveralls', require: false
  gem 'database_cleaner'
  gem 'dox', require: false
  gem 'factory_bot_rails', '~> 4.0'
  gem 'pundit-matchers', '~> 1.6.0'
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'fasterer'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop-rspec'
end

group :production do
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
