# DeliverrAPI::PackageTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **length** | **Float** | Length of the package. | [optional] |
| **width** | **Float** | Width of the package. | [optional] |
| **height** | **Float** | Height of the package. | [optional] |
| **weight** | **Float** | Weight of the package. | [optional] |
| **dimension_unit** | [**LengthUnitTest**](LengthUnitTest.md) |  | [optional] |
| **weight_unit** | [**WeightUnitTest**](WeightUnitTest.md) |  | [optional] |
| **cdsku** | **String** | The cross dock identifier. |  |
| **items** | [**Array&lt;ItemTest&gt;**](ItemTest.md) | The items in this package. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::PackageTest.new(
  length: 12,
  width: 3,
  height: 5,
  weight: 3,
  dimension_unit: null,
  weight_unit: null,
  cdsku: null,
  items: null
)
```

