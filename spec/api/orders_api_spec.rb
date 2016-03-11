=begin


OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::OrdersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrdersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::OrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdersApi' do
    it 'should create an instact of OrdersApi' do
      @instance.should be_a(SwaggerClient::OrdersApi)
    end
  end

  # unit tests for g_et_orders
  # Get an order
  # Gets basic information about an order.
  # @param id Order Id
  # @param version Version of the api being used
  # @param source Description of the source-- ios, android, api
  # @param [Hash] opts the optional parameters
  # @option opts [String] :language_code Resultant info language. Defaults to &#39;en&#39;.
  # @return [PostSubmittedOrder]
  describe 'g_et_orders test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for p_ost_orders
  # Submit an order
  # Places an order into the system. An order can be submitted as PrePayment (in order to temporarily place an order and get an ID for Paypal) using the IsPreSubmit flag.
  # @param order Order to be submitted
  # @param version Version of the api being used
  # @param source Description of the source-- ios, android, api
  # @param [Hash] opts the optional parameters
  # @return [OrderResult]
  describe 'p_ost_orders test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
