# Deliverr::Report

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**ReportStatus**](ReportStatus.md) |  |  |
| **url_expiration** | **Time** | date-time of download url expiration in GMT. | [optional] |
| **url** | **String** | download report as a csv using this URL. Note that this URL will expire at the urlExpiration time. | [optional] |
| **error_message** | **String** | If status is ERROR, a description of the error. | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::Report.new(
  status: null,
  url_expiration: null,
  url: null,
  error_message: null
)
```

