=begin
Gooten API

An overview of the various API methods that Gooten offers, including examples of each.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for GootenApiClient::PreconfiguredProductsInsertResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PreconfiguredProductsInsertResponse' do
  before do
    # run before each test
    @instance = GootenApiClient::PreconfiguredProductsInsertResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PreconfiguredProductsInsertResponse' do
    it 'should create an instact of PreconfiguredProductsInsertResponse' do
      @instance.should be_a(GootenApiClient::PreconfiguredProductsInsertResponse) 
    end
  end
end

