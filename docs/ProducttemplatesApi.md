# GootenApiClient::ProducttemplatesApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_producttemplates**](ProducttemplatesApi.md#get_producttemplates) | **GET** /producttemplates/ | Get a list of product templates




# **get_producttemplates**
> ProductBuildInfoResponse get_producttemplates(sku, opts)

Get a list of product templates

Get a list of product templates.

### Example
```ruby

api = GootenApiClient::ProducttemplatesApi.new

sku = "sku_example" # [String] Productvariant sku.

opts = { 
  language_code: "language_code_example" # [String] Two-character language code, defaults to \"en\" (english)
}

begin
  result = api.get_producttemplates(sku, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling get_producttemplates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sku** | **String**| Productvariant sku. | 
 **language_code** | **String**| Two-character language code, defaults to \&quot;en\&quot; (english) | [optional] 


### Return type

[**ProductBuildInfoResponse**](ProductBuildInfoResponse.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





