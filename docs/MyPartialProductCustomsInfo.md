# Deliverr::MyPartialProductCustomsInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customs_description** | **String** | Customs description - should reflect usage and materials. Needed only for international shipping. | [optional] |
| **harmonized_code** | **String** | Harmonized tariff code. Needed only for international shipping. | [optional] |
| **origin_country** | [**CountryCode**](CountryCode.md) |  | [optional] |
| **customs_value** | **Float** | The value of one unit of this product in USD for the purpose of customs declaration. Needed only for international shipping. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::MyPartialProductCustomsInfo.new(
  customs_description: null,
  harmonized_code: null,
  origin_country: null,
  customs_value: null
)
```

