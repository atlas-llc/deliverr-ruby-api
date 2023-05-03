# DeliverrAPI::WebhookModelTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**WebhookTypeTest**](WebhookTypeTest.md) |  |  |
| **url** | **String** | Webhook URL for where Deliverr events should be sent to. Must begin with &#39;https://&#39;. |  |
| **method** | [**WebhookRequestMethodTest**](WebhookRequestMethodTest.md) |  |  |
| **auth_method** | [**WebhookAuthTypeTest**](WebhookAuthTypeTest.md) |  | [optional] |
| **username** | **String** | Required if auth_method is BASIC_AUTH. | [optional] |
| **password** | **String** | Required if auth_method is BASIC_AUTH. | [optional] |
| **token** | **String** | Required if auth_method is TOKEN. | [optional] |
| **token_header** | **String** | Required if auth_method is TOKEN. | [optional] |
| **id** | **String** | A unique identifier for a webhook. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::WebhookModelTest.new(
  type: null,
  url: null,
  method: null,
  auth_method: null,
  username: null,
  password: null,
  token: null,
  token_header: null,
  id: null
)
```

