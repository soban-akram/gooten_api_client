# GootenApiClient::PostOrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **Integer** |  | 
**sku** | **String** |  | 
**ship_carrier_method_id** | **Integer** |  | 
**ship_type** | **String** | If one does not want to pass a ShipCarrierMethodId of a specific shipping method, one can instead pass &#39;Standard&#39;, &#39;Overnight&#39;, or &#39;Expedited&#39; here. | 
**images** | [**Array&lt;Image&gt;**](Image.md) |  | 
**source_id** | **String** | An optional place to pass in an ID for the OrderItem. | 
**meta** | [**Meta**](Meta.md) | An optional Map&lt;string,string&gt; of misc properties. | 



