=begin
Gooten API

An overview of the various API methods that Gooten offers, including examples of each.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module GootenApiClient
  class CountriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of supported countries. Output is in specified language.
    # Get a list of supported countries. Output is in specified language.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language_code Two-character language code, like \&quot;en\&quot; (english)
    # @option opts [String] :key A string used to query the language dictionary for specific values within a category.
    # @return [CountryList]
    def countries(opts = {})
      data, status_code, headers = countries_with_http_info(opts)
      return data
    end

    # Get a list of supported countries. Output is in specified language.
    # Get a list of supported countries. Output is in specified language.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language_code Two-character language code, like \&quot;en\&quot; (english)
    # @option opts [String] :key A string used to query the language dictionary for specific values within a category.
    # @return [Array<(CountryList, Fixnum, Hash)>] CountryList data, response status code and response headers
    def countries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CountriesApi#countries ..."
      end
      
      # resource path
      local_var_path = "/countries/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'languageCode'] = opts[:'language_code'] if opts[:'language_code']
      query_params[:'key'] = opts[:'key'] if opts[:'key']

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
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CountryList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CountriesApi#countries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
