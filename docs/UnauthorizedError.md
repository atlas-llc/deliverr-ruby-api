# Deliverr::UnauthorizedError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesUNAUTHORIZED**](StatusCodesUNAUTHORIZED.md) |  |  |
| **message** | **String** |  | [default to &#39;Unauthorized&#39;] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::UnauthorizedError.new(
  code: null,
  message: null,
  type: null
)
```

