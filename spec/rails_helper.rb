# spec/rails_helper.rb
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rspec/rails'
require 'factory_bot_rails'
require 'database_cleaner-active_record'
require 'rails-controller-testing'
Rails::Controller::Testing.install

# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?

# Load supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories.
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

# Checks for pending migrations and applies them before tests are run.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  # Enable FactoryBot methods in specs (e.g., `create(:user)` instead of `FactoryBot.create(:user)`)
  config.include FactoryBot::Syntax::Methods

  # Include Devise test helpers
  config.include Devise::Test::ControllerHelpers, type: :controller

  # Set up DatabaseCleaner
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, type: :feature) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # Use transactional fixtures by default
  config.use_transactional_fixtures = true

  # RSpec Rails can automatically mix in different behaviors to your tests
  # based on their file location.
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
end
