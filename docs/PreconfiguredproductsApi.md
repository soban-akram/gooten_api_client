# GootenApiClient::PreconfiguredproductsApi

All URIs are relative to *https://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_preconfiguredproducts**](PreconfiguredproductsApi.md#create_preconfiguredproducts) | **POST** /v/{version}/source/{source}/preconfiguredproducts/ | Insert a preconfigured product
[**delete_preconfiguredproducts**](PreconfiguredproductsApi.md#delete_preconfiguredproducts) | **DELETE** /v/{version}/source/{source}/preconfiguredproducts/ | Delete a preconfigured product
[**get_preconfiguredproducts**](PreconfiguredproductsApi.md#get_preconfiguredproducts) | **GET** /v/{version}/source/{source}/preconfiguredproducts/ | Get a list of your preconfigured products
[**update_preconfiguredproducts**](PreconfiguredproductsApi.md#update_preconfiguredproducts) | **PUT** /v/{version}/source/{source}/preconfiguredproducts/ | Update a preconfigured product


# **create_preconfiguredproducts**
> PreconfiguredProductsInsertResponse create_preconfiguredproducts(preconfigured_product_insert, version, source)

Insert a preconfigured product

Insert a preconfigured product into your recipe.

### Example
```ruby
api = GootenApiClient::PreconfiguredproductsApi.new

preconfigured_product_insert = GootenApiClient::PreconfiguredProductInsert.new # [PreconfiguredProductInsert] The product to be inserted

version = 56 # [Integer] Version of the api being used

source = "source_example" # [String] Description of the source-- ios, android, api


begin
  result = api.create_preconfiguredproducts(preconfigured_product_insert, version, source)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling create_preconfiguredproducts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **preconfigured_product_insert** | [**PreconfiguredProductInsert**](PreconfiguredProductInsert.md)| The product to be inserted | 
 **version** | [**Integer**](.md)| Version of the api being used | 
 **source** | **String**| Description of the source-- ios, android, api | 

### Return type

[**PreconfiguredProductsInsertResponse**](PreconfiguredProductsInsertResponse.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_preconfiguredproducts**
> PreconfiguredProductsInsertResponse delete_preconfiguredproducts(version, source, opts)

Delete a preconfigured product

Delete a preconfigured product from your recipe.

### Example
```ruby
api = GootenApiClient::PreconfiguredproductsApi.new

version = 56 # [Integer] Version of the api being used

source = "source_example" # [String] Description of the source-- ios, android, api

opts = { 
  sku: "sku_example" # [String] The preconfigured product's sku.
}

begin
  result = api.delete_preconfiguredproducts(version, source, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling delete_preconfiguredproducts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | [**Integer**](.md)| Version of the api being used | 
 **source** | **String**| Description of the source-- ios, android, api | 
 **sku** | **String**| The preconfigured product&#39;s sku. | [optional] 

### Return type

[**PreconfiguredProductsInsertResponse**](PreconfiguredProductsInsertResponse.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_preconfiguredproducts**
> PreconfiguredProductsResponse get_preconfiguredproducts(country_code, version, source, opts)

Get a list of your preconfigured products

Get a list of your preconfigured products. The products returned are entirely specific to your recipe.

### Example
```ruby
api = GootenApiClient::PreconfiguredproductsApi.new

country_code = "country_code_example" # [String] The country code where it would be shipped to. For example, 'US' or 'CA'

version = 56 # [Integer] Version of the api being used

source = "source_example" # [String] Description of the source-- ios, android, api

opts = { 
  language_code: "language_code_example", # [String] Two-character language code, defaults to \"en\" (english)
  currency_code: "currency_code_example" # [String] Three character currency code, defaults to \"USD\" (united states dollar)
}

begin
  result = api.get_preconfiguredproducts(country_code, version, source, opts)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling get_preconfiguredproducts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| The country code where it would be shipped to. For example, &#39;US&#39; or &#39;CA&#39; | 
 **version** | [**Integer**](.md)| Version of the api being used | 
 **source** | **String**| Description of the source-- ios, android, api | 
 **language_code** | **String**| Two-character language code, defaults to \&quot;en\&quot; (english) | [optional] 
 **currency_code** | **String**| Three character currency code, defaults to \&quot;USD\&quot; (united states dollar) | [optional] 

### Return type

[**PreconfiguredProductsResponse**](PreconfiguredProductsResponse.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_preconfiguredproducts**
> PreconfiguredProductsInsertResponse update_preconfiguredproducts(preconfigured_product_insert, version, source)

Update a preconfigured product

Update a preconfigured product into your recipe.

### Example
```ruby
api = GootenApiClient::PreconfiguredproductsApi.new

preconfigured_product_insert = GootenApiClient::PreconfiguredProductInsert.new # [PreconfiguredProductInsert] The product to be inserted

version = 56 # [Integer] Version of the api being used

source = "source_example" # [String] Description of the source-- ios, android, api


begin
  result = api.update_preconfiguredproducts(preconfigured_product_insert, version, source)
rescue GootenApiClient::ApiError => e
  puts "Exception when calling update_preconfiguredproducts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **preconfigured_product_insert** | [**PreconfiguredProductInsert**](PreconfiguredProductInsert.md)| The product to be inserted | 
 **version** | [**Integer**](.md)| Version of the api being used | 
 **source** | **String**| Description of the source-- ios, android, api | 

### Return type

[**PreconfiguredProductsInsertResponse**](PreconfiguredProductsInsertResponse.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



