# Deliverr::ShippingRateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | [**Address**](Address.md) |  |  |
| **dskus** | **Array&lt;String&gt;** | Array of Deliverr SKUs (DSKUs) in the cart. Request must contain either dskus or skus in order to generate a shipping rate. | [optional] |
| **skus** | **Array&lt;String&gt;** | Array of SKUs in the cart. Request must contain either dskus or skus in order to generate a shipping rate. | [optional] |
| **cart_value** | [**Price**](Price.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ShippingRateRequest.new(
  destination: null,
  dskus: [&quot;D1234567890&quot;,&quot;DABCDEFGHIJ&quot;],
  skus: [&quot;my-sku-1&quot;,&quot;my-sku-2&quot;],
  cart_value: null
)
```

