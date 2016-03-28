# GootenApiClient::LanguagesApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_language_text**](LanguagesApi.md#get_language_text) | **GET** /languages/ | Get text in a specified language




# **get_language_text**
> LanguageDictionary get_language_text(language_code, opts)

Get text in a specified language

Get text in a specified language

### Example
```ruby

api = GootenApiClient::LanguagesApi.new

language_code = "language_code_example" # [String] Two-character language code, like \"en\" (english)

opts = { 
  key: "key_example" # [String] A string used to query the language dictionary for specific values within a category.
}

begin
  result = api.get_language_text(language_code, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling get_language_text: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language_code** | **String**| Two-character language code, like \&quot;en\&quot; (english) | 
 **key** | **String**| A string used to query the language dictionary for specific values within a category. | [optional] 


### Return type

[**LanguageDictionary**](LanguageDictionary.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





