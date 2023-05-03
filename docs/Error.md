# Deliverr::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  |  |
| **type** | **String** |  | [optional][default to &#39;Internal server error&#39;] |
| **message** | **String** |  |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::Error.new(
  code: null,
  type: null,
  message: null
)
```

