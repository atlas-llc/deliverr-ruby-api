# Deliverr::ReturnsDestinationAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of entity. |  |
| **street1** | **String** | First address line of the address. |  |
| **street2** | **String** | Second address line of the address. | [optional] |
| **company** | **String** | Company name for the entity. | [optional] |
| **city** | **String** | City of the address. |  |
| **state** | **String** | State or region of the address - if a US countryCode, must be the 2-letter state postal abbreviation. |  |
| **zip** | **String** | Postal code of the address. |  |
| **phone** | **String** | Contact number of customer. | [optional] |
| **country** | **String** | Country of the address. |  |
| **is_residential** | **Boolean** | If the address is a residential address. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ReturnsDestinationAddress.new(
  name: null,
  street1: null,
  street2: null,
  company: null,
  city: null,
  state: null,
  zip: null,
  phone: null,
  country: null,
  is_residential: null
)
```

