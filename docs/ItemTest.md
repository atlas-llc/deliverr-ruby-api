# DeliverrAPI::ItemTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The globally unique product identifier created by Deliverr and assigned on product creation. May be referred to in other documentation as the Deliverr SKU or DSKU. |  |
| **quantity** | **Float** | The quantity of this product that is being shipped. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ItemTest.new(
  product_id: null,
  quantity: null
)
```

