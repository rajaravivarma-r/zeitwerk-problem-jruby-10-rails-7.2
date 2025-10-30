source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.0.8'

gem 'pg', platforms: :ruby

gem 'activerecord-jdbcpostgresql-adapter', '~>70', platform: 'jruby'

group :development do
  # Enable Ruby code linting and autocorrect in Sublime Text 3
  gem 'rubocop', '~> 1.75.5', require: false
  gem 'rubocop-rspec', require: false
end

# Standard libraries that will be extracted in version 3.5
gem 'benchmark'
gem 'csv'
gem 'drb'
gem 'logger', require: true
gem 'mutex_m'
gem 'ostruct'

gem 'puma', '~> 6.6'
