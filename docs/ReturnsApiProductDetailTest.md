# DeliverrAPI::ReturnsApiProductDetailTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_name** | **String** | Name of the product in the marketplace. |  |
| **identifiers** | [**Array&lt;ReturnsProductIdentifiersTest&gt;**](ReturnsProductIdentifiersTest.md) | Unique Identifiers for the product it is dependent on the marketplace. |  |
| **dimensions** | [**PackageDimensionsTest**](PackageDimensionsTest.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ReturnsApiProductDetailTest.new(
  product_name: null,
  identifiers: null,
  dimensions: null
)
```

