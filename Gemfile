source 'https://rubygems.org'
gem 'rails', '3.2.3'

# Core Stuff
gem 'sass-rails',   '~> 3.2.3'
gem 'uglifier', '>= 1.0.3'
gem 'json'
gem 'bcrypt-ruby', '~> 3.0.0'

# Default Plugins
gem 'hpricot'

# Fancy Plugins
gem 'paperclip'
gem 'will_paginate'
gem 'contacts', :require => false
gem 'compass-rails'

# Database Stuff
gem 'mysql2'
gem 'tire'

# Deployment
gem 'unicorn'
gem 'capistrano', :require => false

# System Stuff
gem 'whenever', :require => false
gem 'backup', :require => false

# Development Tools
group :development do
  gem 'bullet'
  gem 'debugger'
end

# Testing
group :test, :development do
  gem "rb-fsevent"
  gem "rspec", "2.10.0"
  gem "rspec-rails"
end

group :test do
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
  gem "guard-spork"
  gem "spork", "> 0.9.0.rc"
  gem "growl-rspec"
end
