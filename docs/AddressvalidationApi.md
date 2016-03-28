# GootenApiClient::AddressvalidationApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addressvalidation**](AddressvalidationApi.md#addressvalidation) | **GET** /addressvalidation/ | Validates an address and returns a suggested address (if available) and a validation score.




# **addressvalidation**
> Result addressvalidation(opts)

Validates an address and returns a suggested address (if available) and a validation score.

Validates an address and returns a suggested address (if available) and a validation score.

### Example
```ruby

api = GootenApiClient::AddressvalidationApi.new

opts = { 
  line1: "line1_example", # [String] Address line1.
  line2: "line2_example", # [String] Address line2.
  city: "city_example", # [String] Address city.
  state: "state_example", # [String] Address state.
  postal_code: "postal_code_example", # [String] Address postal code/zip.
  country_code: "country_code_example" # [String] Address country code.
}

begin
  result = api.addressvalidation(opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling addressvalidation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **line1** | **String**| Address line1. | [optional] 
 **line2** | **String**| Address line2. | [optional] 
 **city** | **String**| Address city. | [optional] 
 **state** | **String**| Address state. | [optional] 
 **postal_code** | **String**| Address postal code/zip. | [optional] 
 **country_code** | **String**| Address country code. | [optional] 


### Return type

[**Result**](Result.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





