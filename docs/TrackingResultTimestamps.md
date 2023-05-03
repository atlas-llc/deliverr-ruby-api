# Deliverr::TrackingResultTimestamps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_time** | **Time** | UTC timestamp of when a label was printed for the package. |  |
| **arrival_scan_time** | **Time** | UTC timestamp of the arrival scan. |  |
| **facility_time** | **Time** | UTC timestamp of when the package arrived at the facility. |  |
| **attempted_delivery_time** | **Time** | UTC timestamp of when delivery was attempted for the package. |  |
| **delivery_time** | **Time** | UTC timestamp of when the package was delivered. |  |
| **estimated_delivery_time** | **Time** | UTC timestamp of when the package is expected to be delivered. |  |
| **last_tracking_event_time** | **Time** | UTC timestamp of the last tracking event for the package. |  |
| **last_tracking_ingestion_time** | **Time** | UTC timestamp of when the last tracking event for the package was ingested. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::TrackingResultTimestamps.new(
  label_time: null,
  arrival_scan_time: null,
  facility_time: null,
  attempted_delivery_time: null,
  delivery_time: null,
  estimated_delivery_time: null,
  last_tracking_event_time: null,
  last_tracking_ingestion_time: null
)
```

