# spec/spec_helper.rb
require 'simplecov'
SimpleCov.start
require 'rspec'
require 'rack/test'
require_relative '../service_broker_app'

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def app
    ServiceBrokerApp
  end
end

# For RSpec 2.x and 3.x
RSpec.configure { |c| c.include RSpecMixin }