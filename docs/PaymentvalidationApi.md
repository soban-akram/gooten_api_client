# GootenApiClient::PaymentvalidationApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paymentvalidation**](PaymentvalidationApi.md#paymentvalidation) | **GET** /paymentvalidation/ | Submit payment validation for PayPal




# **paymentvalidation**
> PaymentValidationResponse paymentvalidation(order_id, pay_pal_key)

Submit payment validation for PayPal

Submit payment validation for PayPal

### Example
```ruby

api = GootenApiClient::PaymentvalidationApi.new

order_id = "order_id_example" # [String] Order Id returned from orders/POST

pay_pal_key = "pay_pal_key_example" # [String] The PayPal key returned from the Mobile SDK


begin
  result = api.paymentvalidation(order_id, pay_pal_key)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling paymentvalidation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| Order Id returned from orders/POST | 
 **pay_pal_key** | **String**| The PayPal key returned from the Mobile SDK | 


### Return type

[**PaymentValidationResponse**](PaymentValidationResponse.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





