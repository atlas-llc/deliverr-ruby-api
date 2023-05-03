# Deliverr::ReturnsApiInspectedReturnItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | [**ReturnsApiProductDetail**](ReturnsApiProductDetail.md) |  |  |
| **expected_quantity** | **Float** | Quantity of product send when creating return order. |  |
| **inspection_details** | [**Array&lt;ReturnsApiInspectionDetail&gt;**](ReturnsApiInspectionDetail.md) | Inspection details once the product is scan you can get more or less than expectedQuantity in this payload. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ReturnsApiInspectedReturnItem.new(
  product: null,
  expected_quantity: null,
  inspection_details: null
)
```

