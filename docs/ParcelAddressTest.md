# DeliverrAPI::ParcelAddressTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of entity. |  |
| **street1** | **String** | First address line of the address. |  |
| **street2** | **String** | Second address line of the address. | [optional] |
| **company** | **String** | Company name for the entity. | [optional] |
| **city** | **String** | City of the address. |  |
| **state** | **String** | State of the address - The 2-letter state postal abbreviation of one of the continental states (Alaska [AK], Hawaii [HI], and US Territories are not supported). |  |
| **zip** | **String** | Postal code of the address. |  |
| **country** | [**ParcelCountryCodeTest**](ParcelCountryCodeTest.md) |  |  |
| **email** | **String** | Email for the entity | [optional] |
| **phone** | **String** | Phone for the entity | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ParcelAddressTest.new(
  name: null,
  street1: null,
  street2: null,
  company: null,
  city: null,
  state: null,
  zip: null,
  country: null,
  email: null,
  phone: null
)
```

