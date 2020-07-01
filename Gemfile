# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'aws-sdk',      '~> 2.6'
gem 'bcrypt',       '~> 3.1.7'
gem 'coffee-rails', '~> 4.2'
gem 'figaro'
gem 'jbuilder', '~> 2.5'
gem 'paperclip'
gem 'pg',           '~> 0.18'
gem 'puma',         '~> 3.7'
gem 'rails',        '~> 5.1.4'
gem 'sass-rails',   '~> 5.0'
gem 'turbolinks',   '~> 5'
gem 'uglifier',     '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'launchy'
  gem 'pry'
  gem 'rspec-pride'
  gem 'rspec-rails', '~> 3.6'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
