require 'rubygems'
require 'spork'

system 'rm -fr spec/tmp/*'

ENV["RAILS_ENV"] ||= 'test'

Spork.prefork do

  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'
  require 'capybara/rspec'
  require 'factory_girl'

  RSpec.configure do |config|
    config.treat_symbols_as_metadata_keys_with_true_values = true
    config.filter_run :focus => true
    config.run_all_when_everything_filtered = true
    config.infer_base_class_for_anonymous_controllers = false
  end
end

Spork.each_run do
  FactoryGirl.reload
  Dir[Rails.root.join("app/controllers/**/*.rb")].each {|f| require f}
  Dir[Rails.root.join("app/models/**/*.rb")].each {|f| require f}
  Dir[Rails.root.join("spec/models/**/*.rb")].each {|f| require f}
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
  Dir[Rails.root.join("spec/helpers/**/*.rb")].each {|f| require f}
end

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|

  Dir[Rails.root.join("spec/matchers/**/*.rb")].each {|f| require f}

  config.mock_with :rspec

  config.include(MailerMacros)
  config.before(:each) { reset_email }
  config.before(:each) {
    #Rails.application.routes.default_url_options[:host] = 'www.local.host'
    #@request.host = "www.local.host" if @request
    #I18n.locale = 'en'
  }

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false
end
