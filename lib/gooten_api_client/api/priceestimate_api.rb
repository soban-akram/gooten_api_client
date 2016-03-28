=begin
Gooten API

An overview of the various API methods that Gooten offers, including examples of each.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module GootenApiClient
  class PriceestimateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get an order price
    # Get the price of an order, including discounts from a coupon.
    # @param order Order to potentially be submitted
    # @param version Version of the api being used
    # @param source Description of the source-- ios, android, api
    # @param [Hash] opts the optional parameters
    # @return [OrderPriceResult]
    def p_ost_priceestimate(order, version, source, opts = {})
      data, status_code, headers = p_ost_priceestimate_with_http_info(order, version, source, opts)
      return data
    end

    # Get an order price
    # Get the price of an order, including discounts from a coupon.
    # @param order Order to potentially be submitted
    # @param version Version of the api being used
    # @param source Description of the source-- ios, android, api
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderPriceResult, Fixnum, Hash)>] OrderPriceResult data, response status code and response headers
    def p_ost_priceestimate_with_http_info(order, version, source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PriceestimateApi#p_ost_priceestimate ..."
      end
      
      # verify the required parameter 'order' is set
      fail "Missing the required parameter 'order' when calling p_ost_priceestimate" if order.nil?
      
      # verify the required parameter 'version' is set
      fail "Missing the required parameter 'version' when calling p_ost_priceestimate" if version.nil?
      
      # verify the required parameter 'source' is set
      fail "Missing the required parameter 'source' when calling p_ost_priceestimate" if source.nil?
      
      # resource path
      local_var_path = "/v/{version}/source/{source}/priceestimate/".sub('{format}','json').sub('{' + 'version' + '}', version.to_s).sub('{' + 'source' + '}', source.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(order)
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrderPriceResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PriceestimateApi#p_ost_priceestimate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
