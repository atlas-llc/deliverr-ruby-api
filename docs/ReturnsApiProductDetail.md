# Deliverr::ReturnsApiProductDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_name** | **String** | Name of the product in the marketplace. |  |
| **identifiers** | [**Array&lt;ReturnsProductIdentifiers&gt;**](ReturnsProductIdentifiers.md) | Unique Identifiers for the product it is dependent on the marketplace. |  |
| **dimensions** | [**PackageDimensions**](PackageDimensions.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ReturnsApiProductDetail.new(
  product_name: null,
  identifiers: null,
  dimensions: null
)
```

