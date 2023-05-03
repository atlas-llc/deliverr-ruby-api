# DeliverrAPI::AddressTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of entity. |  |
| **street1** | **String** | First address line of the address. |  |
| **street2** | **String** | Second address line of the address. | [optional] |
| **company** | **String** | Company name for the entity. | [optional] |
| **city** | **String** | City of the address. |  |
| **state** | **String** | State or region of the address - if a US countryCode, must be the 2-letter state postal abbreviation. |  |
| **postcode** | **String** | Postal code of the address. |  |
| **country_code** | [**CountryCodeTest**](CountryCodeTest.md) |  |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::AddressTest.new(
  name: null,
  street1: null,
  street2: null,
  company: null,
  city: null,
  state: null,
  postcode: null,
  country_code: null
)
```

