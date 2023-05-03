# Deliverr::ProductCustomsInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customs_description** | **String** | Customs description - should reflect usage and materials. Needed only for international shipping. |  |
| **harmonized_code** | **String** | Harmonized tariff code. Needed only for international shipping. |  |
| **origin_country** | [**CountryCode**](CountryCode.md) |  |  |
| **customs_value** | **Float** | The value of one unit of this product in USD for the purpose of customs declaration. Needed only for international shipping. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ProductCustomsInfo.new(
  customs_description: null,
  harmonized_code: null,
  origin_country: null,
  customs_value: null
)
```

