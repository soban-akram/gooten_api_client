# GootenApiClient::ProductsApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_products**](ProductsApi.md#get_products) | **GET** /v/{version}/source/{source}/products/ | Get a list of products


# **get_products**
> ProductList get_products(country_code, version, source, opts)

Get a list of products

Get a list of products. The products returned may have variants. Products returned are only those within the overall recipe. All images returned from the service are dynamically resizable by adding width and height querystrings.

### Example
```ruby
api = GootenApiClient::ProductsApi.new

country_code = "country_code_example" # [String] The country code where it would be shipped to. For example, 'US' or 'CA'

version = 56 # [Integer] Version of the api being used

source = "source_example" # [String] Description of the source-- ios, android, api

opts = { 
  partner_billing_key: "partner_billing_key_example", # [String] Partner billing key
  all: "all_example", # [String] Whether or not to return all available printio products, or just ones in your recipe. Pass 'true' or 'false'.
  language_code: "language_code_example", # [String] Two-character language code, defaults to \"en\" (english)
  currency_code: "currency_code_example" # [String] Three character currency code, defaults to \"USD\" (united states dollar)
}

begin
  result = api.get_products(country_code, version, source, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling get_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| The country code where it would be shipped to. For example, &#39;US&#39; or &#39;CA&#39; | 
 **version** | [**Integer**](.md)| Version of the api being used | 
 **source** | **String**| Description of the source-- ios, android, api | 
 **partner_billing_key** | **String**| Partner billing key | [optional] 
 **all** | **String**| Whether or not to return all available printio products, or just ones in your recipe. Pass &#39;true&#39; or &#39;false&#39;. | [optional] 
 **language_code** | **String**| Two-character language code, defaults to \&quot;en\&quot; (english) | [optional] 
 **currency_code** | **String**| Three character currency code, defaults to \&quot;USD\&quot; (united states dollar) | [optional] 

### Return type

[**ProductList**](ProductList.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



