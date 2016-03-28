# GootenApiClient::OrdersearchApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_ordersearch**](OrdersearchApi.md#g_et_ordersearch) | **GET** /ordersearch/ | Search an orders


# **g_et_ordersearch**
> SubmittedOrderList g_et_ordersearch(partner_billing_key, opts)

Search an orders

Search through the orders and return information about orders that match search criteria.

### Example
```ruby
api = GootenApiClient::OrdersearchApi.new

partner_billing_key = "partner_billing_key_example" # [String] Partner billing key

opts = { 
  generic_values: "generic_values_example", # [String] Any value which is related to order (partner name, address, phone, couponCode, etc...)
  last_name: "last_name_example", # [String] Partner last name
  email: "email_example", # [String] Partner email
  postal_code: "postal_code_example", # [String] Billing/Shipping address postal code
  start_date: "start_date_example", # [String] Start date of the date range when order was created
  end_date: "end_date_example", # [String] End date of the date range when order was created
  unique_user_id: "unique_user_id_example", # [String] User Id
  partner_id: 56, # [Integer] Partner Id
  page_size: 56, # [Integer] How many items to return in reponse.
  page: 56 # [Integer] Page number, how many items to skip.
}

begin
  result = api.g_et_ordersearch(partner_billing_key, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling g_et_ordersearch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partner_billing_key** | **String**| Partner billing key | 
 **generic_values** | **String**| Any value which is related to order (partner name, address, phone, couponCode, etc...) | [optional] 
 **last_name** | **String**| Partner last name | [optional] 
 **email** | **String**| Partner email | [optional] 
 **postal_code** | **String**| Billing/Shipping address postal code | [optional] 
 **start_date** | **String**| Start date of the date range when order was created | [optional] 
 **end_date** | **String**| End date of the date range when order was created | [optional] 
 **unique_user_id** | **String**| User Id | [optional] 
 **partner_id** | [**Integer**](.md)| Partner Id | [optional] 
 **page_size** | [**Integer**](.md)| How many items to return in reponse. | [optional] 
 **page** | [**Integer**](.md)| Page number, how many items to skip. | [optional] 

### Return type

[**SubmittedOrderList**](SubmittedOrderList.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



