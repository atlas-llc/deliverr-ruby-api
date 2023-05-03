# Deliverr::LabelGenerationJobRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_channel_id** | [**IntegrationChannelId**](IntegrationChannelId.md) |  |  |
| **estimated_order_count** | **Float** | Estimated number of new orders to be purchased in this label generation job. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::LabelGenerationJobRequest.new(
  integration_channel_id: null,
  estimated_order_count: 2500
)
```

