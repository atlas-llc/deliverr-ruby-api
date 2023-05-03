# Deliverr::ShippingPlanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the shipping plan. | [optional] |
| **external_shipping_plan_id** | **String** | The seller&#39;s shipping plan identifier. |  |
| **shipping_plan_id** | **String** | Deliverr&#39;s internal shipping plan identifier. |  |
| **from_address** | [**Address**](Address.md) |  | [optional] |
| **status** | [**ShippingPlanStatus**](ShippingPlanStatus.md) |  |  |
| **items** | [**Array&lt;Item&gt;**](Item.md) | All items part of this shipping plan. |  |
| **shipments** | [**Array&lt;Shipment&gt;**](Shipment.md) | All shipments for this shipping plan. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ShippingPlanResponse.new(
  name: null,
  external_shipping_plan_id: null,
  shipping_plan_id: null,
  from_address: null,
  status: null,
  items: null,
  shipments: null
)
```

