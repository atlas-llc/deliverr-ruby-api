# DeliverrAPI::PackageDimensionsTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **length** | **Float** | Length of the package. | [optional] |
| **width** | **Float** | Width of the package. | [optional] |
| **height** | **Float** | Height of the package. | [optional] |
| **weight** | **Float** | Weight of the package. | [optional] |
| **dimension_unit** | [**LengthUnitTest**](LengthUnitTest.md) |  | [optional] |
| **weight_unit** | [**WeightUnitTest**](WeightUnitTest.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::PackageDimensionsTest.new(
  length: 12,
  width: 3,
  height: 5,
  weight: 3,
  dimension_unit: null,
  weight_unit: null
)
```

