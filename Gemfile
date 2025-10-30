source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.4', engine: 'jruby', engine_version: '10.0.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7'

gem 'activerecord-jdbcpostgresql-adapter', '~>70', platform: 'jruby'

group :development, :test, :m1, :m2, :m3 do
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
