# Deliverr::TokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  |  |
| **refresh_token** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |
| **token_type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::TokenResponse.new(
  access_token: null,
  refresh_token: null,
  expires_in: null,
  token_type: null
)
```

