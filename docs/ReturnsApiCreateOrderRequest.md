# Deliverr::ReturnsApiCreateOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_address** | [**ReturnsSourceAddress**](ReturnsSourceAddress.md) |  | [optional] |
| **destination_address** | [**ReturnsDestinationAddress**](ReturnsDestinationAddress.md) |  |  |
| **customer** | [**ReturnsApiCustomer**](ReturnsApiCustomer.md) |  | [optional] |
| **shipping_labels** | [**Array&lt;ReturnsApiShippingLabel&gt;**](ReturnsApiShippingLabel.md) | For more than one package send multiple shipping label. | [optional] |
| **marketplace_order** | [**ReturnsApiMarketplaceOrder**](ReturnsApiMarketplaceOrder.md) |  |  |
| **rma** | **String** | Return merchandise authorization unique id generated for returns make sure it is in the shipping label. |  |
| **external_return_id** | **String** | Unique identifier for return in RMT. |  |
| **return_items** | [**Array&lt;ReturnsApiReturnItem&gt;**](ReturnsApiReturnItem.md) | Items being returned. |  |
| **is_purchase_label** | **Boolean** | Whether to purchase label for return package(s) | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ReturnsApiCreateOrderRequest.new(
  source_address: null,
  destination_address: null,
  customer: null,
  shipping_labels: null,
  marketplace_order: null,
  rma: null,
  external_return_id: null,
  return_items: null,
  is_purchase_label: null
)
```

