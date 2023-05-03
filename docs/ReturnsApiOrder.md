# Deliverr::ReturnsApiOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** | Shopify&#39;s return order id. |  |
| **status** | [**ReturnStatus**](ReturnStatus.md) |  |  |
| **deliverr_return_order_url** | **String** | Link to deliverr&#39;s ui return order page. |  |
| **source_address** | [**ReturnsSourceAddress**](ReturnsSourceAddress.md) |  | [optional] |
| **destination_address** | [**ReturnsDestinationAddress**](ReturnsDestinationAddress.md) |  |  |
| **customer** | [**ReturnsApiCustomer**](ReturnsApiCustomer.md) |  | [optional] |
| **shipping_labels** | [**Array&lt;ReturnsApiShippingLabel&gt;**](ReturnsApiShippingLabel.md) | For more than one package send multiple shipping label. |  |
| **marketplace_order** | [**ReturnsApiMarketplaceOrder**](ReturnsApiMarketplaceOrder.md) |  |  |
| **rma** | **String** | Return merchandise authorization unique id generated for returns make sure it is in the shipping label. |  |
| **external_return_id** | **String** | Unique identifier for return in RMT. |  |
| **return_items** | [**Array&lt;ReturnsApiInspectedReturnItem&gt;**](ReturnsApiInspectedReturnItem.md) | Items being returned. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ReturnsApiOrder.new(
  id: null,
  status: null,
  deliverr_return_order_url: null,
  source_address: null,
  destination_address: null,
  customer: null,
  shipping_labels: null,
  marketplace_order: null,
  rma: null,
  external_return_id: null,
  return_items: null
)
```

