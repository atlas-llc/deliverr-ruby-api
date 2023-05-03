# DeliverrAPI::ShippingPlanResponseTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the shipping plan. | [optional] |
| **external_shipping_plan_id** | **String** | The seller&#39;s shipping plan identifier. |  |
| **shipping_plan_id** | **String** | Deliverr&#39;s internal shipping plan identifier. |  |
| **from_address** | [**AddressTest**](AddressTest.md) |  | [optional] |
| **status** | [**ShippingPlanStatusTest**](ShippingPlanStatusTest.md) |  |  |
| **items** | [**Array&lt;ItemTest&gt;**](ItemTest.md) | All items part of this shipping plan. |  |
| **shipments** | [**Array&lt;ShipmentTest&gt;**](ShipmentTest.md) | All shipments for this shipping plan. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ShippingPlanResponseTest.new(
  name: null,
  external_shipping_plan_id: null,
  shipping_plan_id: null,
  from_address: null,
  status: null,
  items: null,
  shipments: null
)
```

