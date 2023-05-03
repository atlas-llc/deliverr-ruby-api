# DeliverrAPI::OrderApiStatusModelTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_order_id** | **String** | A unique order reference meaningful to the external system submitting the order. |  |
| **created_at** | **Time** | The timestamp of creation in RFC 3339 format. e.g. 2017-07-21T17:32:28Z | [optional] |
| **updated_at** | **Time** | The timestamp when last updated in RFC 3339 format. e.g. 2017-07-21T17:32:28Z | [optional] |
| **source** | **String** | The name of the system originating the order such as SHOPIFY, AMAZON, WEBSITE, WALMART or similar. Free text. This is a vital field if the source marketplace restricts which carriers are allowed to be used. |  |
| **source_order_id** | **String** | The order id or reference that is meaningful to the buyer and/or the system sourcing the order. |  |
| **shipto_address** | [**AddressTest**](AddressTest.md) |  |  |
| **order_delivery_time** | **Time** | UTC datetime value for when the order should arrive at the buyer&#39;s address, based on expectations given to customers or set by the originating marketplace. See the Shipment SLA section of this method&#39;s documentation for details. This date time needs to be in the future and after orderShipmentTime. | [optional] |
| **order_shipment_time** | **Time** | UTC datetime value for when the order should should be ready for carrier pickup, based on expectations given to customers or set by the originating marketplace. See the Shipment SLA section of this method&#39;s documentation for details. This date time needs to be in the future and before orderDeliveryTime. | [optional] |
| **line_items** | [**Array&lt;OrderApiLineItemTest&gt;**](OrderApiLineItemTest.md) | line items to be shipped in this order. |  |
| **order_id** | **String** | A unique identifier for this order. |  |
| **status** | [**ApiOrderStatusTest**](ApiOrderStatusTest.md) |  |  |
| **order_shipped_time** | **Time** | UTC datetime value for when entier order (all packages) have been reported ready for carrier pickup. | [optional] |
| **order_delivered_time** | **Time** | UTC datetime value when the entire order (all packages) were reported as completing delivery to the buyer. | [optional] |
| **shipments** | [**Array&lt;OrderShipmentObjectTest&gt;**](OrderShipmentObjectTest.md) | The shipment details if the order status is SHIPPED. |  |
| **cost** | **Float** | The fulfillment order&#39;s cost | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::OrderApiStatusModelTest.new(
  external_order_id: null,
  created_at: null,
  updated_at: null,
  source: null,
  source_order_id: null,
  shipto_address: null,
  order_delivery_time: null,
  order_shipment_time: null,
  line_items: null,
  order_id: null,
  status: null,
  order_shipped_time: null,
  order_delivered_time: null,
  shipments: null,
  cost: null
)
```

