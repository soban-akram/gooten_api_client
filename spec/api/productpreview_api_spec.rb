=begin
Gooten API

An overview of the various API methods that Gooten offers, including examples of each.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for GootenApiClient::ProductpreviewApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductpreviewApi' do
  before do
    # run before each test
    @instance = GootenApiClient::ProductpreviewApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductpreviewApi' do
    it 'should create an instact of ProductpreviewApi' do
      @instance.should be_a(GootenApiClient::ProductpreviewApi)
    end
  end

  # unit tests for p_ost_productpreview
  # Submit an image (or images) to be rendered into a product preview.
  # Submit an image (or images) to be rendered into a product preview.
  # @param product_preview_request Request detailing the operation needing completed
  # @param [Hash] opts the optional parameters
  # @return [ProductPreviewResponse]
  describe 'p_ost_productpreview test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
