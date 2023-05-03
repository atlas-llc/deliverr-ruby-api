# DeliverrAPI::ReturnsApiCreateOrderRequestTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_address** | [**ReturnsSourceAddressTest**](ReturnsSourceAddressTest.md) |  | [optional] |
| **destination_address** | [**ReturnsDestinationAddressTest**](ReturnsDestinationAddressTest.md) |  |  |
| **customer** | [**ReturnsApiCustomerTest**](ReturnsApiCustomerTest.md) |  | [optional] |
| **shipping_labels** | [**Array&lt;ReturnsApiShippingLabelTest&gt;**](ReturnsApiShippingLabelTest.md) | For more than one package send multiple shipping label. | [optional] |
| **marketplace_order** | [**ReturnsApiMarketplaceOrderTest**](ReturnsApiMarketplaceOrderTest.md) |  |  |
| **rma** | **String** | Return merchandise authorization unique id generated for returns make sure it is in the shipping label. |  |
| **external_return_id** | **String** | Unique identifier for return in RMT. |  |
| **return_items** | [**Array&lt;ReturnsApiReturnItemTest&gt;**](ReturnsApiReturnItemTest.md) | Items being returned. |  |
| **is_purchase_label** | **Boolean** | Whether to purchase label for return package(s) | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ReturnsApiCreateOrderRequestTest.new(
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

