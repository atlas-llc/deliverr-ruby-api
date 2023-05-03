# Deliverr::OrderShipmentObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tracking_number** | **String** | The unique tracking identifier for this shipment. |  |
| **shipping_carrier** | [**ShippingCarrierType**](ShippingCarrierType.md) |  |  |
| **shipping_service** | [**ShippingServiceType**](ShippingServiceType.md) |  |  |
| **shipped_time** | **Time** | The time at which the shipment was shipped. |  |
| **tracking_url** | **String** | The tracking URL for a landing page to track the shipment. | [optional] |
| **warehouse_id** | [**WarehouseIdType**](WarehouseIdType.md) |  |  |
| **status** | [**ApiOrderShipmentStatus**](ApiOrderShipmentStatus.md) |  |  |
| **shipped_items** | [**Array&lt;OrderApiShipmentItem&gt;**](OrderApiShipmentItem.md) | Each shipment item object lists the individual items of a shipment. If a bundle was ordered, only the items of the bundles are listed, but not the bundle product itself. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::OrderShipmentObject.new(
  tracking_number: null,
  shipping_carrier: null,
  shipping_service: null,
  shipped_time: null,
  tracking_url: null,
  warehouse_id: null,
  status: null,
  shipped_items: null
)
```

