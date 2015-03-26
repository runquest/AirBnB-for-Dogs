ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'bundler/setup'
require 'active_support/all'
require 'active_record'
require 'rspec'
require 'database_cleaner'
require 'rake'

require './config/environment'

# supress active record logging messages
ActiveRecord::Base.logger.level = 1

# Recreate the database
ActiveRecord::Migration.suppress_messages do
  require './db/schema.rb'
end

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with :truncation
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  config.mock_with(:rspec) do |mocks|
    # This option should be set when all dependencies are being loaded
    # before a spec run, as is the case in a typical spec helper. It will
    # cause any verifying double instantiation for a class that does not
    # exist to raise, protecting against incorrectly spelt names.
    mocks.verify_doubled_constant_names = true
  end
end

I18n.enforce_available_locales = false