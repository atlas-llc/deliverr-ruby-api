# Deliverr::PackageType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **length** | **Float** | Length of the package. | [optional] |
| **width** | **Float** | Width of the package. | [optional] |
| **height** | **Float** | Height of the package. | [optional] |
| **weight** | **Float** | Weight of the package. | [optional] |
| **dimension_unit** | [**LengthUnit**](LengthUnit.md) |  | [optional] |
| **weight_unit** | [**WeightUnit**](WeightUnit.md) |  | [optional] |
| **num_packages** | **Float** | The number of packages shipped for this package type. |  |
| **items** | [**Array&lt;Item&gt;**](Item.md) | The list of items shipped in this package type. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::PackageType.new(
  length: 12,
  width: 3,
  height: 5,
  weight: 3,
  dimension_unit: null,
  weight_unit: null,
  num_packages: null,
  items: null
)
```

