=begin
Gooten API

An overview of the various API methods that Gooten offers, including examples of each.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for GootenApiClient::ShippingpricesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ShippingpricesApi' do
  before do
    # run before each test
    @instance = GootenApiClient::ShippingpricesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShippingpricesApi' do
    it 'should create an instact of ShippingpricesApi' do
      @instance.should be_a(GootenApiClient::ShippingpricesApi)
    end
  end

  # unit tests for p_ost_shippingprices
  # Get a list of shipping options and prices for items
  # Get a list of shipping options and prices for items.
  # @param shipping_prices_request DTO with required information
  # @param [Hash] opts the optional parameters
  # @option opts [String] :partner_billing_key Partner billing key
  # @return [ShippingPricesResult]
  describe 'p_ost_shippingprices test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
