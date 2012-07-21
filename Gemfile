source 'https://rubygems.org'

# Rails
gem 'rails', '3.2.3'

# Core Stuff
gem 'sass-rails',   '~> 3.2.3'
gem 'uglifier', '>= 1.0.3'
gem 'json'
gem 'bcrypt-ruby', '~> 3.0.0'

# Default Plugins
gem 'hpricot'

# Fancy Plugins
gem 'will_paginate'

# Image-Related
gem 'paperclip'
gem 'rmagick'

# CSS-Related
gem 'font-awesome-rails'
gem 'compass-rails'
gem 'bourbon'

# Database Stuff
gem 'mysql2'
gem 'tire'

# Extra Plugins
gem 'contacts', :require => false

# Deployment
gem 'unicorn'
gem 'capistrano', :require => false

# System Stuff
gem 'whenever', :require => false
gem 'foreman',  :require => false

# Development Tools
group :test, :development do
  gem 'bullet'
  gem 'debugger'
  gem "rb-fsevent"
  gem 'mocha_rails'
  gem "rspec", "2.10.0"
  gem "rspec-rails"
  gem "sextant"
  gem "brakeman", :require => false
  gem "konacha"
end

# Test Specific
group :test do
  gem "factory_girl_rails"
  gem "capybara"
  gem "shoulda-matchers"
  gem 'capybara-webkit'
  gem 'poltergeist'
  gem "guard-rspec"
  gem "guard-spork"
  gem "spork", "> 0.9.0.rc"
  gem "growl-rspec"
end
