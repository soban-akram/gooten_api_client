=begin


OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AddressvalidationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AddressvalidationApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AddressvalidationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AddressvalidationApi' do
    it 'should create an instact of AddressvalidationApi' do
      @instance.should be_a(SwaggerClient::AddressvalidationApi)
    end
  end

  # unit tests for addressvalidation
  # Validates an address and returns a suggested address (if available) and a validation score.
  # Validates an address and returns a suggested address (if available) and a validation score.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :line1 Address line1.
  # @option opts [String] :line2 Address line2.
  # @option opts [String] :city Address city.
  # @option opts [String] :state Address state.
  # @option opts [String] :postal_code Address postal code/zip.
  # @option opts [String] :country_code Address country code.
  # @return [Result]
  describe 'addressvalidation test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
