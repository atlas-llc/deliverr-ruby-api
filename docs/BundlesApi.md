# Deliverr::BundlesAPI

All URIs are relative to *https://api.deliverr.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bundle**](BundlesAPI.md#create_bundle) | **POST** /bundles/v1/bundle |  |
| [**get_bundle**](BundlesAPI.md#get_bundle) | **GET** /bundles/v1/bundle/{bundleId} |  |
| [**get_bundle_by_external_bundle_id**](BundlesAPI.md#get_bundle_by_external_bundle_id) | **GET** /bundles/v1/bundle/externalId/{externalBundleId} |  |
| [**get_bundle_inventory**](BundlesAPI.md#get_bundle_inventory) | **GET** /bundles/v1/bundle/{bundleId}/inventory |  |
| [**link_alias_to_bundle**](BundlesAPI.md#link_alias_to_bundle) | **PATCH** /bundles/v1/bundle/{bundleId}/link/{externalBundleId} |  |
| [**unlink_alias_from_bundles**](BundlesAPI.md#unlink_alias_from_bundles) | **PATCH** /bundles/v1/bundle/unlink/externalId/{externalBundleId} |  |


## create_bundle

> <ApiBundleModelResponse> create_bundle(api_bundle_model)



Creates a new bundle.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::BundlesAPI.new
api_bundle_model = Deliverr::ApiBundleModel.new({external_bundle_id: 'external_bundle_id_example', title: 'title_example', sku: 'sku_example', bundle_contents: [Deliverr::BundleContent.new({product_id: 'product_id_example', quantity: 3.56})]}) # ApiBundleModel | 

begin
  
  result = api_instance.create_bundle(api_bundle_model)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->create_bundle: #{e}"
end
```

#### Using the create_bundle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiBundleModelResponse>, Integer, Hash)> create_bundle_with_http_info(api_bundle_model)

```ruby
begin
  
  data, status_code, headers = api_instance.create_bundle_with_http_info(api_bundle_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiBundleModelResponse>
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->create_bundle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_bundle_model** | [**ApiBundleModel**](ApiBundleModel.md) |  |  |

### Return type

[**ApiBundleModelResponse**](ApiBundleModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_bundle

> <ApiBundleModelResponse> get_bundle(bundle_id)



Get bundle information for a bundle.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::BundlesAPI.new
bundle_id = 'bundle_id_example' # String | 

begin
  
  result = api_instance.get_bundle(bundle_id)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->get_bundle: #{e}"
end
```

#### Using the get_bundle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiBundleModelResponse>, Integer, Hash)> get_bundle_with_http_info(bundle_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_bundle_with_http_info(bundle_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiBundleModelResponse>
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->get_bundle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bundle_id** | **String** |  |  |

### Return type

[**ApiBundleModelResponse**](ApiBundleModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bundle_by_external_bundle_id

> <ApiBundleModelResponse> get_bundle_by_external_bundle_id(external_bundle_id)



Get bundle information for a bundle by the external bundle id assigned.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::BundlesAPI.new
external_bundle_id = 'external_bundle_id_example' # String | 

begin
  
  result = api_instance.get_bundle_by_external_bundle_id(external_bundle_id)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->get_bundle_by_external_bundle_id: #{e}"
end
```

#### Using the get_bundle_by_external_bundle_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiBundleModelResponse>, Integer, Hash)> get_bundle_by_external_bundle_id_with_http_info(external_bundle_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_bundle_by_external_bundle_id_with_http_info(external_bundle_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiBundleModelResponse>
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->get_bundle_by_external_bundle_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_bundle_id** | **String** |  |  |

### Return type

[**ApiBundleModelResponse**](ApiBundleModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bundle_inventory

> <ApiBundleInventoryResponseModel> get_bundle_inventory(bundle_id)



Get available inventory information for the bundle.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::BundlesAPI.new
bundle_id = 'bundle_id_example' # String | 

begin
  
  result = api_instance.get_bundle_inventory(bundle_id)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->get_bundle_inventory: #{e}"
end
```

#### Using the get_bundle_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiBundleInventoryResponseModel>, Integer, Hash)> get_bundle_inventory_with_http_info(bundle_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_bundle_inventory_with_http_info(bundle_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiBundleInventoryResponseModel>
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->get_bundle_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bundle_id** | **String** |  |  |

### Return type

[**ApiBundleInventoryResponseModel**](ApiBundleInventoryResponseModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## link_alias_to_bundle

> <ApiBundleModelResponse> link_alias_to_bundle(bundle_id, external_bundle_id)



Links an externalBundleId to an existing bundle. A bundle can only be linked to one externalBundleId.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::BundlesAPI.new
bundle_id = 'bundle_id_example' # String | 
external_bundle_id = 'external_bundle_id_example' # String | 

begin
  
  result = api_instance.link_alias_to_bundle(bundle_id, external_bundle_id)
  p result
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->link_alias_to_bundle: #{e}"
end
```

#### Using the link_alias_to_bundle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiBundleModelResponse>, Integer, Hash)> link_alias_to_bundle_with_http_info(bundle_id, external_bundle_id)

```ruby
begin
  
  data, status_code, headers = api_instance.link_alias_to_bundle_with_http_info(bundle_id, external_bundle_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiBundleModelResponse>
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->link_alias_to_bundle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bundle_id** | **String** |  |  |
| **external_bundle_id** | **String** |  |  |

### Return type

[**ApiBundleModelResponse**](ApiBundleModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unlink_alias_from_bundles

> unlink_alias_from_bundles(external_bundle_id)



Unlinks an externalBundleId from any existing bundle it is currently associated with.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
Deliverr.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Deliverr::BundlesAPI.new
external_bundle_id = 'external_bundle_id_example' # String | 

begin
  
  api_instance.unlink_alias_from_bundles(external_bundle_id)
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->unlink_alias_from_bundles: #{e}"
end
```

#### Using the unlink_alias_from_bundles_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unlink_alias_from_bundles_with_http_info(external_bundle_id)

```ruby
begin
  
  data, status_code, headers = api_instance.unlink_alias_from_bundles_with_http_info(external_bundle_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Deliverr::ApiError => e
  puts "Error when calling BundlesAPI->unlink_alias_from_bundles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_bundle_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

