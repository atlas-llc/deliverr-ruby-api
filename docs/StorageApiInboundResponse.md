# Deliverr::StorageApiInboundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** | unique Id for storage Inbound |  |
| **storage_items** | [**Array&lt;StorageItem&gt;**](StorageItem.md) | Details of Items for StorageInbound |  |
| **created_at** | **Time** | Date of creation Of StorageInbound |  |
| **updated_at** | **Time** |  |  |
| **asn_id** | **String** | PO/Asn for the StorageInbound | [optional] |
| **shipping_plan_id** | **Float** | Shipping Plan Id for storageInbound |  |
| **shipment_id** | **Float** | ShipmentId Id for storageInbound | [optional] |
| **warehouse_id** | **String** | Destination Warehouse Id for the StorageInbound |  |
| **from** | [**DeliverrAddress**](DeliverrAddress.md) |  | [optional] |
| **to** | [**DeliverrAddress**](DeliverrAddress.md) |  | [optional] |
| **status** | [**InboundStatus**](InboundStatus.md) |  |  |
| **shipment_type** | [**ShipmentType**](ShipmentType.md) |  |  |
| **seller_id** | **String** | sellerId for StorageInbound |  |
| **shipment_pro** | **String** |  | [optional] |
| **bol_link** | **String** |  | [optional] |
| **estimated_inbound_fee** | **Float** |  | [optional] |
| **charged_inbound_fee** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **is_archived** | **Boolean** |  | [optional] |
| **arrival_expected_at** | **Time** |  | [optional] |
| **pallet_count** | **Float** | PalletCount for StorageInbound required for PALLETIZED Inbound | [optional] |
| **container_id** | **String** | ContainerId for StorageInbound | [optional] |
| **container_size** | [**ContainerSize**](ContainerSize.md) |  | [optional] |
| **estimated_storage_fee** | **Float** |  | [optional] |
| **estimated_unloading_fee** | **Float** |  | [optional] |
| **shipping_plan_name** | **String** | Shipping plan name for the storage inbound | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::StorageApiInboundResponse.new(
  id: null,
  storage_items: null,
  created_at: null,
  updated_at: null,
  asn_id: null,
  shipping_plan_id: null,
  shipment_id: null,
  warehouse_id: null,
  from: null,
  to: null,
  status: null,
  shipment_type: null,
  seller_id: null,
  shipment_pro: null,
  bol_link: null,
  estimated_inbound_fee: null,
  charged_inbound_fee: null,
  currency: null,
  is_archived: null,
  arrival_expected_at: null,
  pallet_count: null,
  container_id: null,
  container_size: null,
  estimated_storage_fee: null,
  estimated_unloading_fee: null,
  shipping_plan_name: null
)
```

