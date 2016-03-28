=begin
Gooten API

An overview of the various API methods that Gooten offers, including examples of each.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for GootenApiClient::ProductsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductsApi' do
  before do
    # run before each test
    @instance = GootenApiClient::ProductsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductsApi' do
    it 'should create an instact of ProductsApi' do
      @instance.should be_a(GootenApiClient::ProductsApi)
    end
  end

  # unit tests for get_products
  # Get a list of products
  # Get a list of products. The products returned may have variants. Products returned are only those within the overall recipe. All images returned from the service are dynamically resizable by adding width and height querystrings.
  # @param country_code The country code where it would be shipped to. For example, &#39;US&#39; or &#39;CA&#39;
  # @param version Version of the api being used
  # @param source Description of the source-- ios, android, api
  # @param [Hash] opts the optional parameters
  # @option opts [String] :partner_billing_key Partner billing key
  # @option opts [String] :all Whether or not to return all available printio products, or just ones in your recipe. Pass &#39;true&#39; or &#39;false&#39;.
  # @option opts [String] :language_code Two-character language code, defaults to \&quot;en\&quot; (english)
  # @option opts [String] :currency_code Three character currency code, defaults to \&quot;USD\&quot; (united states dollar)
  # @return [ProductList]
  describe 'get_products test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
