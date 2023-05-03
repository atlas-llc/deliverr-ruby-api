# DeliverrAPI::ParcelsTest

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_parcel**](ParcelsTest.md#create_parcel) | **POST** /parcels/v1/parcel |  |
| [**get_parcel**](ParcelsTest.md#get_parcel) | **GET** /parcels/v1/parcel/{parcelId} |  |
| [**get_parcel_tracking**](ParcelsTest.md#get_parcel_tracking) | **GET** /parcels/v1/parcel/{parcelId}/tracking |  |
| [**get_quote**](ParcelsTest.md#get_quote) | **POST** /parcels/v1/parcel/quote |  |
| [**get_tracking_url**](ParcelsTest.md#get_tracking_url) | **GET** /parcels/v1/trackingUrl/{parcelId} |  |


## create_parcel

> <ParcelCreateResponse> create_parcel(request_body)



Create a parcel and purchase a label for that parcel.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ParcelsTest.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  
  result = api_instance.create_parcel(request_body)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->create_parcel: #{e}"
end
```

#### Using the create_parcel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ParcelCreateResponse>, Integer, Hash)> create_parcel_with_http_info(request_body)

```ruby
begin
  
  data, status_code, headers = api_instance.create_parcel_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ParcelCreateResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->create_parcel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**ParcelCreateResponse**](ParcelCreateResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_parcel

> <ParcelGetResponse> get_parcel(parcel_id)



Fetch the parcel with the specified ID.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ParcelsTest.new
parcel_id = 'parcel_id_example' # String | Unique ID used to track the parcel, returned after acquiring a purchase label.

begin
  
  result = api_instance.get_parcel(parcel_id)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->get_parcel: #{e}"
end
```

#### Using the get_parcel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ParcelGetResponse>, Integer, Hash)> get_parcel_with_http_info(parcel_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_parcel_with_http_info(parcel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ParcelGetResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->get_parcel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parcel_id** | **String** | Unique ID used to track the parcel, returned after acquiring a purchase label. |  |

### Return type

[**ParcelGetResponse**](ParcelGetResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_parcel_tracking

> <ParcelTrackingGetResponse> get_parcel_tracking(parcel_id)



Fetch the tracking information for the parcel with the specified ID.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ParcelsTest.new
parcel_id = 'parcel_id_example' # String | Unique ID used to track the parcel, returned after acquiring a purchase label.

begin
  
  result = api_instance.get_parcel_tracking(parcel_id)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->get_parcel_tracking: #{e}"
end
```

#### Using the get_parcel_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ParcelTrackingGetResponse>, Integer, Hash)> get_parcel_tracking_with_http_info(parcel_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_parcel_tracking_with_http_info(parcel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ParcelTrackingGetResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->get_parcel_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parcel_id** | **String** | Unique ID used to track the parcel, returned after acquiring a purchase label. |  |

### Return type

[**ParcelTrackingGetResponse**](ParcelTrackingGetResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_quote

> <QuoteCreateResponse> get_quote(quote_create_request)



Create a quote for a label purchase without actually purchasing a label.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ParcelsTest.new
quote_create_request = DeliverrAPI::QuoteCreateRequest.new({service_level: DeliverrAPI::ServiceLevel::STANDARD, injection_location: DeliverrAPI::InjectionLocation::EWR, ship_to_address: DeliverrAPI::ParcelAddress.new({name: 'name_example', street1: 'street1_example', city: 'city_example', state: 'state_example', zip: 'zip_example', country: DeliverrAPI::ParcelCountryCode::US}), dimensions: DeliverrAPI::ParcelPackageDimensions.new}) # QuoteCreateRequest | 

begin
  
  result = api_instance.get_quote(quote_create_request)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->get_quote: #{e}"
end
```

#### Using the get_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuoteCreateResponse>, Integer, Hash)> get_quote_with_http_info(quote_create_request)

```ruby
begin
  
  data, status_code, headers = api_instance.get_quote_with_http_info(quote_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuoteCreateResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->get_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quote_create_request** | [**QuoteCreateRequest**](QuoteCreateRequest.md) |  |  |

### Return type

[**QuoteCreateResponse**](QuoteCreateResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_tracking_url

> String get_tracking_url(parcel_id)



Fetch the tracking URL for the specified ID.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ParcelsTest.new
parcel_id = 'parcel_id_example' # String | Unique ID used to track the parcel, returned after acquiring a purchase label.

begin
  
  result = api_instance.get_tracking_url(parcel_id)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->get_tracking_url: #{e}"
end
```

#### Using the get_tracking_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_tracking_url_with_http_info(parcel_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_tracking_url_with_http_info(parcel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelsTest->get_tracking_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parcel_id** | **String** | Unique ID used to track the parcel, returned after acquiring a purchase label. |  |

### Return type

**String**

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

