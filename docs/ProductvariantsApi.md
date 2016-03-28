# GootenApiClient::ProductvariantsApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_productvariants**](ProductvariantsApi.md#get_productvariants) | **GET** /v/{version}/source/{source}/productvariants/ | Get a list of available product variations. Includes pricing information




# **get_productvariants**
> ProductVariantResponse get_productvariants(country_code, product_id, version, source, opts)

Get a list of available product variations. Includes pricing information

Get a list of all available product variations, or if one passes in a specific product type id (productId), gets a list of available variations of a recipe product.

### Example
```ruby

api = GootenApiClient::ProductvariantsApi.new

country_code = "country_code_example" # [String] The country code the order would be shipped to. For example, 'US' or 'FR'

product_id = "product_id_example" # [String] Recipe product ID, such as those returned from the /products service

version = 56 # [Integer] Version of the api being used

source = "source_example" # [String] Description of the source-- ios, android, api, widget

opts = { 
  partner_billing_key: "partner_billing_key_example", # [String] Partner billing key
  all: "all_example", # [String] Whether or not to return all available printio products, or just ones in your recipe. Pass 'true' or 'false'.
  language_code: "language_code_example", # [String] Two-character language code, defaults to \"en\" (english)
  currency_code: "currency_code_example" # [String] Three character currency code, defaults to \"USD\" (united states dollar)
}

begin
  result = api.get_productvariants(country_code, product_id, version, source, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling get_productvariants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| The country code the order would be shipped to. For example, &#39;US&#39; or &#39;FR&#39; | 
 **product_id** | **String**| Recipe product ID, such as those returned from the /products service | 
 **version** | [**Integer**](.md)| Version of the api being used | 
 **source** | **String**| Description of the source-- ios, android, api, widget | 
 **partner_billing_key** | **String**| Partner billing key | [optional] 
 **all** | **String**| Whether or not to return all available printio products, or just ones in your recipe. Pass &#39;true&#39; or &#39;false&#39;. | [optional] 
 **language_code** | **String**| Two-character language code, defaults to \&quot;en\&quot; (english) | [optional] 
 **currency_code** | **String**| Three character currency code, defaults to \&quot;USD\&quot; (united states dollar) | [optional] 


### Return type

[**ProductVariantResponse**](ProductVariantResponse.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





