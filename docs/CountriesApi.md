# GootenApiClient::CountriesApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countries**](CountriesApi.md#countries) | **GET** /countries/ | Get a list of supported countries. Output is in specified language.




# **countries**
> CountryList countries(opts)

Get a list of supported countries. Output is in specified language.

Get a list of supported countries. Output is in specified language.

### Example
```ruby

api = GootenApiClient::CountriesApi.new

opts = { 
  language_code: "language_code_example", # [String] Two-character language code, like \"en\" (english)
  key: "key_example" # [String] A string used to query the language dictionary for specific values within a category.
}

begin
  result = api.countries(opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling countries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language_code** | **String**| Two-character language code, like \&quot;en\&quot; (english) | [optional] 
 **key** | **String**| A string used to query the language dictionary for specific values within a category. | [optional] 


### Return type

[**CountryList**](CountryList.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





