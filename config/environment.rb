def production?
  true if Rails.env.to_s == 'production'
end

def development?
  true if Rails.env.to_s == 'development'
end

def test?
  true if Rails.env.to_s == 'test'
end

if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RailsDefaultProject::Application.initialize!

# Clear the cache
Rails.cache.clear
