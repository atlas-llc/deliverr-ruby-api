# Deliverr::ConflictError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesCONFLICT**](StatusCodesCONFLICT.md) |  |  |
| **message** | **String** |  | [default to &#39;Conflict&#39;] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ConflictError.new(
  code: null,
  message: null,
  type: null
)
```

