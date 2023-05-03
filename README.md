# deliverr_api

Deliverr - the Ruby gem for the Deliverr API


**Note:** As of February 24 2023, Deliverr is not accepting new API accounts. Existing integrations already using the Deliverr API in production may continue usage and development. 
All other Deliverr accounts initiating Deliverr API requests will be denied access. A new Logistics API is being developed by Shopify and will be replacing the Deliverr API.

# Getting Started

To start using the Deliverr API, you must have an active login account to the Deliverr web portal.
To inbound physical inventory, ship orders, process returns or parcel transactions, you'll also need to set up a billing account.

## If you do not already have a Deliverr account
1. Create an account for free at https://sellerportal.deliverr.com
2. When you are asked to choose an integration, you can click <b>Skip</b> at the upper right corner
3. Once you have logged in, you can start the OAuth process below

## If you already have a Deliverr account
1. You can access the Products, Webhooks and Reports API immediately regardless of billing status
2. All other APIs available will require you to have set up billing with Deliverr
3. The Returns, Parcel, and Parcel Integration APIs are only accessible to select merchants

## Guides and examples

Please visit the <a href='https://support.deliverr.com/hc/en-us/sections/6332705638423-Deliverr-API'>Deliverr API Guide</a> to view steps and code examples.

# Release Notes

Please refer to the following <a href='https://support.deliverr.com/hc/en-us/articles/9399822031383'>Deliverr API - Release Notes</a> help center article to view the most recent changes to Deliverr API.

# Status Page

You can find information about the current status of the API endpoints at <a href='https://deliverrstatus.com/'>deliverrstatus.com</a>



This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build deliverr_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./deliverr_api-1.0.0.gem
```

(for development, run `gem install --dev ./deliverr_api-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'deliverr_api', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'deliverr_api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'deliverr_api'

# Setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
  # Configure faraday connection
  config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }
end

api_instance = Deliverr::BundlesAPI.new
api_bundle_model = Deliverr::ApiBundleModel.new({external_bundle_id: 'external_bundle_id_example', title: 'title_example', sku: 'sku_example', bundle_contents: [Deliverr::BundleContent.new({product_id: 'product_id_example', quantity: 3.56})]}) # ApiBundleModel | 

begin
  result = api_instance.create_bundle(api_bundle_model)
  p result
rescue Deliverr::ApiError => e
  puts "Exception when calling BundlesAPI->create_bundle: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.deliverr.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Deliverr::BundlesAPI* | [**create_bundle**](docs/BundlesAPI.md#create_bundle) | **POST** /bundles/v1/bundle | 
*Deliverr::BundlesAPI* | [**get_bundle**](docs/BundlesAPI.md#get_bundle) | **GET** /bundles/v1/bundle/{bundleId} | 
*Deliverr::BundlesAPI* | [**get_bundle_by_external_bundle_id**](docs/BundlesAPI.md#get_bundle_by_external_bundle_id) | **GET** /bundles/v1/bundle/externalId/{externalBundleId} | 
*Deliverr::BundlesAPI* | [**get_bundle_inventory**](docs/BundlesAPI.md#get_bundle_inventory) | **GET** /bundles/v1/bundle/{bundleId}/inventory | 
*Deliverr::BundlesAPI* | [**link_alias_to_bundle**](docs/BundlesAPI.md#link_alias_to_bundle) | **PATCH** /bundles/v1/bundle/{bundleId}/link/{externalBundleId} | 
*Deliverr::BundlesAPI* | [**unlink_alias_from_bundles**](docs/BundlesAPI.md#unlink_alias_from_bundles) | **PATCH** /bundles/v1/bundle/unlink/externalId/{externalBundleId} | 
*Deliverr::OAuthAPI* | [**authorization_redirect**](docs/OAuthAPI.md#authorization_redirect) | **GET** /oauth/v1/authorize | 
*Deliverr::OAuthAPI* | [**exchange_token**](docs/OAuthAPI.md#exchange_token) | **POST** /oauth/v1/token | 
*Deliverr::OrdersAPI* | [**cancel_order**](docs/OrdersAPI.md#cancel_order) | **POST** /orders/v1/order/{orderId}/cancel | 
*Deliverr::OrdersAPI* | [**create_order**](docs/OrdersAPI.md#create_order) | **POST** /orders/v1/order | 
*Deliverr::OrdersAPI* | [**get_order**](docs/OrdersAPI.md#get_order) | **GET** /orders/v1/order/{orderId} | 
*Deliverr::OrdersAPI* | [**get_order_by_external_id**](docs/OrdersAPI.md#get_order_by_external_id) | **GET** /orders/v1/order/externalId/{externalOrderId} | 
*Deliverr::OrdersAPI* | [**retry_order**](docs/OrdersAPI.md#retry_order) | **POST** /orders/v1/order/{orderId}/retry | 
*Deliverr::ParcelIntegrationAPI* | [**create_label_generation_job**](docs/ParcelIntegrationAPI.md#create_label_generation_job) | **POST** /parcel-integration/v1/job | 
*Deliverr::ParcelsAPI* | [**create_parcel**](docs/ParcelsAPI.md#create_parcel) | **POST** /parcels/v1/parcel | 
*Deliverr::ParcelsAPI* | [**get_parcel**](docs/ParcelsAPI.md#get_parcel) | **GET** /parcels/v1/parcel/{parcelId} | 
*Deliverr::ParcelsAPI* | [**get_parcel_tracking**](docs/ParcelsAPI.md#get_parcel_tracking) | **GET** /parcels/v1/parcel/{parcelId}/tracking | 
*Deliverr::ParcelsAPI* | [**get_quote**](docs/ParcelsAPI.md#get_quote) | **POST** /parcels/v1/parcel/quote | 
*Deliverr::ParcelsAPI* | [**get_tracking_url**](docs/ParcelsAPI.md#get_tracking_url) | **GET** /parcels/v1/trackingUrl/{parcelId} | 
*Deliverr::ProductsAPI* | [**create_product**](docs/ProductsAPI.md#create_product) | **POST** /products/v1/product | 
*Deliverr::ProductsAPI* | [**create_product_barcode**](docs/ProductsAPI.md#create_product_barcode) | **POST** /products/v1/product/{productId}/barcode | 
*Deliverr::ProductsAPI* | [**get_all_inventory**](docs/ProductsAPI.md#get_all_inventory) | **GET** /products/v1/product/inventory | 
*Deliverr::ProductsAPI* | [**get_product**](docs/ProductsAPI.md#get_product) | **GET** /products/v1/product/{productId} | 
*Deliverr::ProductsAPI* | [**get_product_by_external_product_id**](docs/ProductsAPI.md#get_product_by_external_product_id) | **GET** /products/v1/product/externalId/{externalProductId} | 
*Deliverr::ProductsAPI* | [**get_product_inventory**](docs/ProductsAPI.md#get_product_inventory) | **GET** /products/v1/product/{productId}/inventory | 
*Deliverr::ProductsAPI* | [**get_products**](docs/ProductsAPI.md#get_products) | **GET** /products/v1/product/products | 
*Deliverr::ProductsAPI* | [**get_warehouse_details**](docs/ProductsAPI.md#get_warehouse_details) | **GET** /products/v1/product/warehouse | 
*Deliverr::ProductsAPI* | [**link_alias_to_product**](docs/ProductsAPI.md#link_alias_to_product) | **PATCH** /products/v1/product/{productId}/link/{externalProductId} | 
*Deliverr::ProductsAPI* | [**unlink_alias_from_products**](docs/ProductsAPI.md#unlink_alias_from_products) | **PATCH** /products/v1/product/unlink/externalId/{externalProductId} | 
*Deliverr::ProductsAPI* | [**update_product**](docs/ProductsAPI.md#update_product) | **PATCH** /products/v1/product/{productId} | 
*Deliverr::ReportsAPI* | [**generate_report**](docs/ReportsAPI.md#generate_report) | **POST** /reports/v1/report | 
*Deliverr::ReportsAPI* | [**get_report_status**](docs/ReportsAPI.md#get_report_status) | **GET** /reports/v1/status/{reportReference} | 
*Deliverr::ReturnsAPI* | [**cancel_order_return**](docs/ReturnsAPI.md#cancel_order_return) | **PUT** /returns/v1/orders/{returnId}/cancel | 
*Deliverr::ReturnsAPI* | [**create_order_return**](docs/ReturnsAPI.md#create_order_return) | **POST** /returns/v1/orders | 
*Deliverr::ReturnsAPI* | [**get_order_return**](docs/ReturnsAPI.md#get_order_return) | **GET** /returns/v1/orders/{returnId} | 
*Deliverr::StorageAPI* | [**get_inbound_order**](docs/StorageAPI.md#get_inbound_order) | **GET** /storage/v1/inbounds/{shippingPlanId} | 
*Deliverr::WebhooksAPI* | [**create_webhook**](docs/WebhooksAPI.md#create_webhook) | **POST** /webhooks/v1/webhook | 
*Deliverr::WebhooksAPI* | [**delete_webhook**](docs/WebhooksAPI.md#delete_webhook) | **DELETE** /webhooks/v1/webhook/{webhookId} | 
*Deliverr::WebhooksAPI* | [**get_webhook**](docs/WebhooksAPI.md#get_webhook) | **GET** /webhooks/v1/webhook/{webhookId} | 
*Deliverr::WebhooksAPI* | [**get_webhooks**](docs/WebhooksAPI.md#get_webhooks) | **GET** /webhooks/v1/webhook | 
*Deliverr::WebhooksAPI* | [**trigger_mock_webhook_event**](docs/WebhooksAPI.md#trigger_mock_webhook_event) | **POST** /webhooks/v1/event | 


## Documentation for Models

 - [Deliverr::AcceptedSuccess](docs/AcceptedSuccess.md)
 - [Deliverr::Address](docs/Address.md)
 - [Deliverr::ApiBundleInventoryResponseModel](docs/ApiBundleInventoryResponseModel.md)
 - [Deliverr::ApiBundleModel](docs/ApiBundleModel.md)
 - [Deliverr::ApiBundleModelResponse](docs/ApiBundleModelResponse.md)
 - [Deliverr::ApiInboundShipmentStatus](docs/ApiInboundShipmentStatus.md)
 - [Deliverr::ApiInventoryResponseModel](docs/ApiInventoryResponseModel.md)
 - [Deliverr::ApiOrderShipmentStatus](docs/ApiOrderShipmentStatus.md)
 - [Deliverr::ApiOrderStatus](docs/ApiOrderStatus.md)
 - [Deliverr::ApiProductModel](docs/ApiProductModel.md)
 - [Deliverr::ApiProductModelResponse](docs/ApiProductModelResponse.md)
 - [Deliverr::ApiUpdateProductModel](docs/ApiUpdateProductModel.md)
 - [Deliverr::ApiWarehouseResponseModel](docs/ApiWarehouseResponseModel.md)
 - [Deliverr::BadCreateShippingRequestError](docs/BadCreateShippingRequestError.md)
 - [Deliverr::BadOrderRequestError](docs/BadOrderRequestError.md)
 - [Deliverr::BadParcelRequestError](docs/BadParcelRequestError.md)
 - [Deliverr::BadRequestError](docs/BadRequestError.md)
 - [Deliverr::BarcodeOption](docs/BarcodeOption.md)
 - [Deliverr::BoxLabelsFormat](docs/BoxLabelsFormat.md)
 - [Deliverr::BundleContent](docs/BundleContent.md)
 - [Deliverr::BundleMembership](docs/BundleMembership.md)
 - [Deliverr::CategoryEnum](docs/CategoryEnum.md)
 - [Deliverr::ConflictError](docs/ConflictError.md)
 - [Deliverr::ContainerSize](docs/ContainerSize.md)
 - [Deliverr::CountryCode](docs/CountryCode.md)
 - [Deliverr::Currency](docs/Currency.md)
 - [Deliverr::DeliverrAddress](docs/DeliverrAddress.md)
 - [Deliverr::Error](docs/Error.md)
 - [Deliverr::ExpiredTrackingData](docs/ExpiredTrackingData.md)
 - [Deliverr::ForbiddenError](docs/ForbiddenError.md)
 - [Deliverr::HazmatInfo](docs/HazmatInfo.md)
 - [Deliverr::HazmatStatus](docs/HazmatStatus.md)
 - [Deliverr::InboundStatus](docs/InboundStatus.md)
 - [Deliverr::InjectionLocation](docs/InjectionLocation.md)
 - [Deliverr::IntegrationChannelId](docs/IntegrationChannelId.md)
 - [Deliverr::InternalServerError](docs/InternalServerError.md)
 - [Deliverr::InventoryPool](docs/InventoryPool.md)
 - [Deliverr::InventoryUpdateWebhookEvent](docs/InventoryUpdateWebhookEvent.md)
 - [Deliverr::Item](docs/Item.md)
 - [Deliverr::LabelGenerationJobRequest](docs/LabelGenerationJobRequest.md)
 - [Deliverr::LabelGenerationJobResponse](docs/LabelGenerationJobResponse.md)
 - [Deliverr::LabelLanguage](docs/LabelLanguage.md)
 - [Deliverr::LengthUnit](docs/LengthUnit.md)
 - [Deliverr::LotTrackingDetails](docs/LotTrackingDetails.md)
 - [Deliverr::MockWebhookDetails](docs/MockWebhookDetails.md)
 - [Deliverr::MyPartialProductCustomsInfo](docs/MyPartialProductCustomsInfo.md)
 - [Deliverr::NotFoundError](docs/NotFoundError.md)
 - [Deliverr::OrderApiBundleItem](docs/OrderApiBundleItem.md)
 - [Deliverr::OrderApiCreateRequest](docs/OrderApiCreateRequest.md)
 - [Deliverr::OrderApiLineItem](docs/OrderApiLineItem.md)
 - [Deliverr::OrderApiShipmentItem](docs/OrderApiShipmentItem.md)
 - [Deliverr::OrderApiStatusModel](docs/OrderApiStatusModel.md)
 - [Deliverr::OrderShipmentObject](docs/OrderShipmentObject.md)
 - [Deliverr::OrderStatusWebhookEvent](docs/OrderStatusWebhookEvent.md)
 - [Deliverr::Package](docs/Package.md)
 - [Deliverr::PackageDimensions](docs/PackageDimensions.md)
 - [Deliverr::PackageType](docs/PackageType.md)
 - [Deliverr::ParcelAddress](docs/ParcelAddress.md)
 - [Deliverr::ParcelCountryCode](docs/ParcelCountryCode.md)
 - [Deliverr::ParcelCreateRequest](docs/ParcelCreateRequest.md)
 - [Deliverr::ParcelCreateResponse](docs/ParcelCreateResponse.md)
 - [Deliverr::ParcelGetResponse](docs/ParcelGetResponse.md)
 - [Deliverr::ParcelPackageDimensions](docs/ParcelPackageDimensions.md)
 - [Deliverr::ParcelStatus](docs/ParcelStatus.md)
 - [Deliverr::ParcelTrackingGetResponse](docs/ParcelTrackingGetResponse.md)
 - [Deliverr::ParcelUnprocessableEntityError](docs/ParcelUnprocessableEntityError.md)
 - [Deliverr::ParcelWeightUnit](docs/ParcelWeightUnit.md)
 - [Deliverr::PlanItem](docs/PlanItem.md)
 - [Deliverr::Price](docs/Price.md)
 - [Deliverr::ProductCustomsInfo](docs/ProductCustomsInfo.md)
 - [Deliverr::QcItemStatus](docs/QcItemStatus.md)
 - [Deliverr::QuoteCreateRequest](docs/QuoteCreateRequest.md)
 - [Deliverr::QuoteCreateResponse](docs/QuoteCreateResponse.md)
 - [Deliverr::Report](docs/Report.md)
 - [Deliverr::ReportGenerationRequest](docs/ReportGenerationRequest.md)
 - [Deliverr::ReportGenerationResponse](docs/ReportGenerationResponse.md)
 - [Deliverr::ReportStatus](docs/ReportStatus.md)
 - [Deliverr::ReturnStatus](docs/ReturnStatus.md)
 - [Deliverr::ReturnsApiCreateOrderRequest](docs/ReturnsApiCreateOrderRequest.md)
 - [Deliverr::ReturnsApiCustomer](docs/ReturnsApiCustomer.md)
 - [Deliverr::ReturnsApiInspectedReturnItem](docs/ReturnsApiInspectedReturnItem.md)
 - [Deliverr::ReturnsApiInspectionDetail](docs/ReturnsApiInspectionDetail.md)
 - [Deliverr::ReturnsApiMarketplaceOrder](docs/ReturnsApiMarketplaceOrder.md)
 - [Deliverr::ReturnsApiOrder](docs/ReturnsApiOrder.md)
 - [Deliverr::ReturnsApiProductDetail](docs/ReturnsApiProductDetail.md)
 - [Deliverr::ReturnsApiReturnItem](docs/ReturnsApiReturnItem.md)
 - [Deliverr::ReturnsApiShippingLabel](docs/ReturnsApiShippingLabel.md)
 - [Deliverr::ReturnsDestinationAddress](docs/ReturnsDestinationAddress.md)
 - [Deliverr::ReturnsProductIdentifiers](docs/ReturnsProductIdentifiers.md)
 - [Deliverr::ReturnsPublicApiCarriers](docs/ReturnsPublicApiCarriers.md)
 - [Deliverr::ReturnsPublicApiMarketplace](docs/ReturnsPublicApiMarketplace.md)
 - [Deliverr::ReturnsPublicApiShippingMethod](docs/ReturnsPublicApiShippingMethod.md)
 - [Deliverr::ReturnsSourceAddress](docs/ReturnsSourceAddress.md)
 - [Deliverr::SellerReportType](docs/SellerReportType.md)
 - [Deliverr::ServiceLevel](docs/ServiceLevel.md)
 - [Deliverr::Shipment](docs/Shipment.md)
 - [Deliverr::ShipmentItem](docs/ShipmentItem.md)
 - [Deliverr::ShipmentType](docs/ShipmentType.md)
 - [Deliverr::ShippingCarrierType](docs/ShippingCarrierType.md)
 - [Deliverr::ShippingLabelFormat](docs/ShippingLabelFormat.md)
 - [Deliverr::ShippingLabelResponse](docs/ShippingLabelResponse.md)
 - [Deliverr::ShippingPlanRequest](docs/ShippingPlanRequest.md)
 - [Deliverr::ShippingPlanResponse](docs/ShippingPlanResponse.md)
 - [Deliverr::ShippingPlanStatus](docs/ShippingPlanStatus.md)
 - [Deliverr::ShippingRateError](docs/ShippingRateError.md)
 - [Deliverr::ShippingRateRequest](docs/ShippingRateRequest.md)
 - [Deliverr::ShippingRateResponse](docs/ShippingRateResponse.md)
 - [Deliverr::ShippingServiceType](docs/ShippingServiceType.md)
 - [Deliverr::StatusCodesACCEPTED](docs/StatusCodesACCEPTED.md)
 - [Deliverr::StatusCodesBADREQUEST](docs/StatusCodesBADREQUEST.md)
 - [Deliverr::StatusCodesCONFLICT](docs/StatusCodesCONFLICT.md)
 - [Deliverr::StatusCodesFORBIDDEN](docs/StatusCodesFORBIDDEN.md)
 - [Deliverr::StatusCodesINTERNALSERVERERROR](docs/StatusCodesINTERNALSERVERERROR.md)
 - [Deliverr::StatusCodesNOTFOUND](docs/StatusCodesNOTFOUND.md)
 - [Deliverr::StatusCodesUNAUTHORIZED](docs/StatusCodesUNAUTHORIZED.md)
 - [Deliverr::StatusCodesUNPROCESSABLEENTITY](docs/StatusCodesUNPROCESSABLEENTITY.md)
 - [Deliverr::StorageApiInboundResponse](docs/StorageApiInboundResponse.md)
 - [Deliverr::StorageItem](docs/StorageItem.md)
 - [Deliverr::TokenResponse](docs/TokenResponse.md)
 - [Deliverr::TrackingResultTimestamps](docs/TrackingResultTimestamps.md)
 - [Deliverr::TrackingStatus](docs/TrackingStatus.md)
 - [Deliverr::UnId](docs/UnId.md)
 - [Deliverr::UnauthorizedError](docs/UnauthorizedError.md)
 - [Deliverr::UnprocessableEntityError](docs/UnprocessableEntityError.md)
 - [Deliverr::WarehouseDetails](docs/WarehouseDetails.md)
 - [Deliverr::WarehouseIdType](docs/WarehouseIdType.md)
 - [Deliverr::WebhookAuthType](docs/WebhookAuthType.md)
 - [Deliverr::WebhookCreateModel](docs/WebhookCreateModel.md)
 - [Deliverr::WebhookMockUpdateType](docs/WebhookMockUpdateType.md)
 - [Deliverr::WebhookModel](docs/WebhookModel.md)
 - [Deliverr::WebhookOrderStatus](docs/WebhookOrderStatus.md)
 - [Deliverr::WebhookRequestMethod](docs/WebhookRequestMethod.md)
 - [Deliverr::WebhookType](docs/WebhookType.md)
 - [Deliverr::WebhookTypeINVENTORYUPDATE](docs/WebhookTypeINVENTORYUPDATE.md)
 - [Deliverr::WebhookTypeORDERSTATUSUPDATE](docs/WebhookTypeORDERSTATUSUPDATE.md)
 - [Deliverr::WeightUnit](docs/WeightUnit.md)


## Documentation for Authorization


### OAuth2.0


- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://api.deliverr.com/oauth/v1/authorize
- **Scopes**: 
  - api/products: access to products endpoints
  - api/orders: access to orders endpoints
  - api/returns: access to returns endpoints
  - api/parcels: access to parcel endpoints
  - api/reports: access to reports endpoints
  - api/webhooks: access to webhooks endpoints
  - api/parcel-integration: access to parcel integration endpoints

