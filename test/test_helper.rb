require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
  add_filter "/features/support/paths.rb"
  add_filter "/features/support/selectors.rb"
  add_filter "/features/step_definitions/AddProductToShoppingCart.rb"
  add_filter "/features/step_definitions/EditQuantityInShoppingCart.rb"
end

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
