=begin


OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module SwaggerClient
  class ImagevalidationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Submit image validation
    # Validates an images and returns a validation errors (if available).
    # @param req Image validation request, contains sku and image sizes per space
    # @param [Hash] opts the optional parameters
    # @return [ImageValidatorResult]
    def p_ost_imagevalidation(req, opts = {})
      data, status_code, headers = p_ost_imagevalidation_with_http_info(req, opts)
      return data
    end

    # Submit image validation
    # Validates an images and returns a validation errors (if available).
    # @param req Image validation request, contains sku and image sizes per space
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImageValidatorResult, Fixnum, Hash)>] ImageValidatorResult data, response status code and response headers
    def p_ost_imagevalidation_with_http_info(req, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ImagevalidationApi#p_ost_imagevalidation ..."
      end
      
      # verify the required parameter 'req' is set
      fail "Missing the required parameter 'req' when calling p_ost_imagevalidation" if req.nil?
      
      # resource path
      local_var_path = "/imagevalidation/".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(req)
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImageValidatorResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagevalidationApi#p_ost_imagevalidation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end