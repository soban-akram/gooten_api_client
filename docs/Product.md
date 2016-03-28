# GootenApiClient::Product

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The product type id. Represents a type/class of products. Can later be passed into the productvariant service to get available product variations. | 
**u_id** | **String** | An id that syncs between printio&#39;s staging and live environments. | 
**name** | **String** |  | 
**short_description** | **String** |  | 
**has_available_product_variants** | **BOOLEAN** | Whether or not the item returned is a Product, or ProductVariant. Items with a Sku will not have other product variants | 
**has_product_templates** | **BOOLEAN** | Whether or not the product has variants with templates. | 
**featured_index** | **Integer** | A value to sort featured items by. Note that this is null if IsFeatured=false | 
**max_zoom** | **Integer** |  | 
**retail_price** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**info** | [**Array&lt;ProductInfo&gt;**](ProductInfo.md) | Content describing the product. | 
**product_image** | [**Array&lt;ProductImage&gt;**](ProductImage.md) | Product images. Note that this contains large and small images for web, mobile, etc | 
**price_info** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | 
**partner_price_info** | [**ProductPriceInfo**](ProductPriceInfo.md) |  | [optional] 
**categories** | [**Array&lt;Category&gt;**](Category.md) |  | 


