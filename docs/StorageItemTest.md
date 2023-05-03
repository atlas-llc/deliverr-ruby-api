# DeliverrAPI::StorageItemTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dsku** | **String** |  |  |
| **lot_number** | **String** |  | [optional] |
| **expiration_date_has_day** | **Boolean** |  | [optional] |
| **expiration_date** | **String** |  | [optional] |
| **storage_inbound_order_id** | **Float** |  | [optional] |
| **storage_transfer_order_id** | **Float** |  | [optional] |
| **expected_qty** | **Float** |  |  |
| **received_qty** | **Float** |  | [optional] |
| **damaged_qty** | **Float** |  | [optional] |
| **discrepant_units** | **Float** |  | [optional] |
| **case_qty** | **Float** |  | [optional] |
| **case_height** | **Float** |  | [optional] |
| **case_length** | **Float** |  | [optional] |
| **case_width** | **Float** |  | [optional] |
| **case_weight** | **Float** |  | [optional] |
| **id** | **Float** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::StorageItemTest.new(
  dsku: null,
  lot_number: null,
  expiration_date_has_day: null,
  expiration_date: null,
  storage_inbound_order_id: null,
  storage_transfer_order_id: null,
  expected_qty: null,
  received_qty: null,
  damaged_qty: null,
  discrepant_units: null,
  case_qty: null,
  case_height: null,
  case_length: null,
  case_width: null,
  case_weight: null,
  id: null,
  created_at: null,
  updated_at: null
)
```

