# GootenApiClient::OrdersApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_orders**](OrdersApi.md#g_et_orders) | **GET** /v/{version}/source/{source}/orders/ | Get an order
[**p_ost_orders**](OrdersApi.md#p_ost_orders) | **POST** /v/{version}/source/{source}/orders/ | Submit an order




# **g_et_orders**
> PostSubmittedOrder g_et_orders(id, version, source, opts)

Get an order

Gets basic information about an order.

### Example
```ruby

api = GootenApiClient::OrdersApi.new

id = "id_example" # [String] Order Id

version = 56 # [Integer] Version of the api being used

source = "source_example" # [String] Description of the source-- ios, android, api

opts = { 
  language_code: "language_code_example" # [String] Resultant info language. Defaults to 'en'.
}

begin
  result = api.g_et_orders(id, version, source, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling g_et_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Order Id | 
 **version** | [**Integer**](.md)| Version of the api being used | 
 **source** | **String**| Description of the source-- ios, android, api | 
 **language_code** | **String**| Resultant info language. Defaults to &#39;en&#39;. | [optional] 


### Return type

[**PostSubmittedOrder**](PostSubmittedOrder.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# **p_ost_orders**
> OrderResult p_ost_orders(order, version, source)

Submit an order

Places an order into the system. An order can be submitted as PrePayment (in order to temporarily place an order and get an ID for Paypal) using the IsPreSubmit flag.

### Example
```ruby

api = GootenApiClient::OrdersApi.new

order = GootenApiClient::PostOrder.new # [PostOrder] Order to be submitted

version = 56 # [Integer] Version of the api being used

source = "source_example" # [String] Description of the source-- ios, android, api


begin
  result = api.p_ost_orders(order, version, source)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling p_ost_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**PostOrder**](PostOrder.md)| Order to be submitted | 
 **version** | [**Integer**](.md)| Version of the api being used | 
 **source** | **String**| Description of the source-- ios, android, api | 


### Return type

[**OrderResult**](OrderResult.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json





