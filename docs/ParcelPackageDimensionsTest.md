# DeliverrAPI::ParcelPackageDimensionsTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **length** | **Float** | Length of the package. | [optional] |
| **width** | **Float** | Width of the package. | [optional] |
| **height** | **Float** | Height of the package. | [optional] |
| **weight** | **Float** | Weight of the package. | [optional] |
| **length_unit** | [**LengthUnitTest**](LengthUnitTest.md) |  | [optional] |
| **weight_unit** | [**ParcelWeightUnitTest**](ParcelWeightUnitTest.md) |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ParcelPackageDimensionsTest.new(
  length: 12,
  width: 3,
  height: 5,
  weight: 3,
  length_unit: null,
  weight_unit: null
)
```

