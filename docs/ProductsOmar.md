# DeliverrAPI::ProductsOmar

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product**](ProductsOmar.md#create_product) | **POST** /products/v1/product |  |
| [**create_product_barcode**](ProductsOmar.md#create_product_barcode) | **POST** /products/v1/product/{productId}/barcode |  |
| [**get_all_inventory**](ProductsOmar.md#get_all_inventory) | **GET** /products/v1/product/inventory |  |
| [**get_product**](ProductsOmar.md#get_product) | **GET** /products/v1/product/{productId} |  |
| [**get_product_by_external_product_id**](ProductsOmar.md#get_product_by_external_product_id) | **GET** /products/v1/product/externalId/{externalProductId} |  |
| [**get_product_inventory**](ProductsOmar.md#get_product_inventory) | **GET** /products/v1/product/{productId}/inventory |  |
| [**get_products**](ProductsOmar.md#get_products) | **GET** /products/v1/product/products |  |
| [**get_warehouse_details**](ProductsOmar.md#get_warehouse_details) | **GET** /products/v1/product/warehouse |  |
| [**link_alias_to_product**](ProductsOmar.md#link_alias_to_product) | **PATCH** /products/v1/product/{productId}/link/{externalProductId} |  |
| [**unlink_alias_from_products**](ProductsOmar.md#unlink_alias_from_products) | **PATCH** /products/v1/product/unlink/externalId/{externalProductId} |  |
| [**update_product**](ProductsOmar.md#update_product) | **PATCH** /products/v1/product/{productId} |  |


## create_product

> <ApiProductModelResponse> create_product(api_product_model)



Create a new product.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
api_product_model = DeliverrAPI::ApiProductModel.new({external_product_id: 'external_product_id_example', title: 'title_example', sku: 'sku_example', category: DeliverrAPI::CategoryEnum::ADULT}) # ApiProductModel | 

begin
  
  result = api_instance.create_product(api_product_model)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->create_product: #{e}"
end
```

#### Using the create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProductModelResponse>, Integer, Hash)> create_product_with_http_info(api_product_model)

```ruby
begin
  
  data, status_code, headers = api_instance.create_product_with_http_info(api_product_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProductModelResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->create_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_product_model** | [**ApiProductModel**](ApiProductModel.md) |  |  |

### Return type

[**ApiProductModelResponse**](ApiProductModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_product_barcode

> <ApiProductModelResponse> create_product_barcode(product_id, barcode_option)



Validates and assigns a new barcode to this product.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
product_id = 'product_id_example' # String | 
barcode_option = DeliverrAPI::BarcodeOption.new({barcode_type: 'PRODUCT', barcode_value: 'barcode_value_example'}) # BarcodeOption | 

begin
  
  result = api_instance.create_product_barcode(product_id, barcode_option)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->create_product_barcode: #{e}"
end
```

#### Using the create_product_barcode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProductModelResponse>, Integer, Hash)> create_product_barcode_with_http_info(product_id, barcode_option)

```ruby
begin
  
  data, status_code, headers = api_instance.create_product_barcode_with_http_info(product_id, barcode_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProductModelResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->create_product_barcode_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **barcode_option** | [**BarcodeOption**](BarcodeOption.md) |  |  |

### Return type

[**ApiProductModelResponse**](ApiProductModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_inventory

> <Array<ApiInventoryResponseModel>> get_all_inventory(opts)



Get all inventory.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
opts = {
  limit: 56, # Integer | 
  offset: 56, # Integer | 
  pool_name: DeliverrAPI::InventoryPool::DEFAULT # InventoryPool | 
}

begin
  
  result = api_instance.get_all_inventory(opts)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_all_inventory: #{e}"
end
```

#### Using the get_all_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiInventoryResponseModel>>, Integer, Hash)> get_all_inventory_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_all_inventory_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiInventoryResponseModel>>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_all_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **pool_name** | [**InventoryPool**](.md) |  | [optional] |

### Return type

[**Array&lt;ApiInventoryResponseModel&gt;**](ApiInventoryResponseModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product

> <ApiProductModelResponse> get_product(product_id)



Get product information for products.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
product_id = 'product_id_example' # String | 

begin
  
  result = api_instance.get_product(product_id)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_product: #{e}"
end
```

#### Using the get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProductModelResponse>, Integer, Hash)> get_product_with_http_info(product_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_product_with_http_info(product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProductModelResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |

### Return type

[**ApiProductModelResponse**](ApiProductModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_by_external_product_id

> <ApiProductModelResponse> get_product_by_external_product_id(external_product_id)



Get product information for products.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
external_product_id = 'external_product_id_example' # String | 

begin
  
  result = api_instance.get_product_by_external_product_id(external_product_id)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_product_by_external_product_id: #{e}"
end
```

#### Using the get_product_by_external_product_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProductModelResponse>, Integer, Hash)> get_product_by_external_product_id_with_http_info(external_product_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_product_by_external_product_id_with_http_info(external_product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProductModelResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_product_by_external_product_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_product_id** | **String** |  |  |

### Return type

[**ApiProductModelResponse**](ApiProductModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_inventory

> <ApiInventoryResponseModel> get_product_inventory(product_id, opts)



Get available inventory information for product.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
product_id = 'product_id_example' # String | 
opts = {
  pool_name: DeliverrAPI::InventoryPool::DEFAULT # InventoryPool | 
}

begin
  
  result = api_instance.get_product_inventory(product_id, opts)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_product_inventory: #{e}"
end
```

#### Using the get_product_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiInventoryResponseModel>, Integer, Hash)> get_product_inventory_with_http_info(product_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_product_inventory_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiInventoryResponseModel>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_product_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **pool_name** | [**InventoryPool**](.md) |  | [optional] |

### Return type

[**ApiInventoryResponseModel**](ApiInventoryResponseModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_products

> <Array<ApiProductModelResponse>> get_products(opts)



Get a list of products and their information.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
opts = {
  limit: 56, # Integer | 
  offset: 56 # Integer | 
}

begin
  
  result = api_instance.get_products(opts)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_products: #{e}"
end
```

#### Using the get_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiProductModelResponse>>, Integer, Hash)> get_products_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiProductModelResponse>>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |

### Return type

[**Array&lt;ApiProductModelResponse&gt;**](ApiProductModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_warehouse_details

> <Array<ApiWarehouseResponseModel>> get_warehouse_details(product_ids, opts)



Get warehouse information for a given list of productIds.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
product_ids = 'product_ids_example' # String | 
opts = {
  pool_name: DeliverrAPI::InventoryPool::DEFAULT # InventoryPool | 
}

begin
  
  result = api_instance.get_warehouse_details(product_ids, opts)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_warehouse_details: #{e}"
end
```

#### Using the get_warehouse_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiWarehouseResponseModel>>, Integer, Hash)> get_warehouse_details_with_http_info(product_ids, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_warehouse_details_with_http_info(product_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiWarehouseResponseModel>>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->get_warehouse_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_ids** | **String** |  |  |
| **pool_name** | [**InventoryPool**](.md) |  | [optional] |

### Return type

[**Array&lt;ApiWarehouseResponseModel&gt;**](ApiWarehouseResponseModel.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## link_alias_to_product

> <ApiProductModelResponse> link_alias_to_product(product_id, external_product_id)



Links an externalProductId to an existing product. A product can only be linked to one externalProductId.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
product_id = 'product_id_example' # String | 
external_product_id = 'external_product_id_example' # String | 

begin
  
  result = api_instance.link_alias_to_product(product_id, external_product_id)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->link_alias_to_product: #{e}"
end
```

#### Using the link_alias_to_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProductModelResponse>, Integer, Hash)> link_alias_to_product_with_http_info(product_id, external_product_id)

```ruby
begin
  
  data, status_code, headers = api_instance.link_alias_to_product_with_http_info(product_id, external_product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProductModelResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->link_alias_to_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **external_product_id** | **String** |  |  |

### Return type

[**ApiProductModelResponse**](ApiProductModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unlink_alias_from_products

> unlink_alias_from_products(external_product_id)



Unlinks an externalProductId from any existing product it is currently associated with.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
external_product_id = 'external_product_id_example' # String | 

begin
  
  api_instance.unlink_alias_from_products(external_product_id)
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->unlink_alias_from_products: #{e}"
end
```

#### Using the unlink_alias_from_products_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unlink_alias_from_products_with_http_info(external_product_id)

```ruby
begin
  
  data, status_code, headers = api_instance.unlink_alias_from_products_with_http_info(external_product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->unlink_alias_from_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_product_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product

> <ApiProductModelResponse> update_product(product_id, api_update_product_model)



Update product attributes.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ProductsOmar.new
product_id = 'product_id_example' # String | 
api_update_product_model = DeliverrAPI::ApiUpdateProductModel.new # ApiUpdateProductModel | 

begin
  
  result = api_instance.update_product(product_id, api_update_product_model)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProductModelResponse>, Integer, Hash)> update_product_with_http_info(product_id, api_update_product_model)

```ruby
begin
  
  data, status_code, headers = api_instance.update_product_with_http_info(product_id, api_update_product_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProductModelResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ProductsOmar->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **api_update_product_model** | [**ApiUpdateProductModel**](ApiUpdateProductModel.md) |  |  |

### Return type

[**ApiProductModelResponse**](ApiProductModelResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

