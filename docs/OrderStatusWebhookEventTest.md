# DeliverrAPI::OrderStatusWebhookEventTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_time** | **Time** | The UTC timestamp of the triggering event. |  |
| **event_id** | **String** | The globally unique id of this event - can be used for deduplication or idempotency purposes. |  |
| **type** | [**WebhookTypeORDERSTATUSUPDATETest**](WebhookTypeORDERSTATUSUPDATETest.md) |  |  |
| **update_type** | [**WebhookOrderStatusTest**](WebhookOrderStatusTest.md) |  |  |
| **old_status** | [**WebhookOrderStatusTest**](WebhookOrderStatusTest.md) |  | [optional] |
| **new_status** | [**WebhookOrderStatusTest**](WebhookOrderStatusTest.md) |  |  |
| **order_id** | **String** | A unique identifier for this order. |  |
| **shipments** | [**Array&lt;OrderShipmentObjectTest&gt;**](OrderShipmentObjectTest.md) |  The shipment details if the update_type is ORDER_SHIPPED. One shipment is reported per package shipped. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::OrderStatusWebhookEventTest.new(
  event_time: null,
  event_id: null,
  type: null,
  update_type: null,
  old_status: null,
  new_status: null,
  order_id: null,
  shipments: null
)
```

