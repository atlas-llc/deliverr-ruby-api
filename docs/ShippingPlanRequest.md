# Deliverr::ShippingPlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the shipping plan. | [optional] |
| **external_shipping_plan_id** | **String** | The seller&#39;s shipping plan identifier. |  |
| **from_address** | [**Address**](Address.md) |  |  |
| **destination** | **String** | The crossdock identifier where the packages will be shipped to. |  |
| **items** | [**Array&lt;PlanItem&gt;**](PlanItem.md) | The list of all items part of this shipping plan. |  |
| **package_types** | [**Array&lt;PackageType&gt;**](PackageType.md) | The list of different package types part of this shipping plan. Each package type can represent multiple packages. |  |

## Example

```ruby
require 'deliverr_api'

instance = Deliverr::ShippingPlanRequest.new(
  name: null,
  external_shipping_plan_id: null,
  from_address: null,
  destination: null,
  items: null,
  package_types: null
)
```

