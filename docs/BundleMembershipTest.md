# DeliverrAPI::BundleMembershipTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bundle_id** | **String** | The globally unique bundle identifier created by Deliverr and assigned on bundle creation. May be referred to in other documentation as the Deliverr SKU or BSKU. |  |
| **quantity** | **Float** | The number of units of this product in the bundle. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::BundleMembershipTest.new(
  bundle_id: null,
  quantity: null
)
```

