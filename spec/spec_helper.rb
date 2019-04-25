
ENV['RACK_ENV'] = 'test'

require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'rspec'
require './app'

Capybara.app = Sinatra::Application 
def app
  Tictactoe
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Capybara::DSL
  #config.include Capybara::RSpecMatchers
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups

end

