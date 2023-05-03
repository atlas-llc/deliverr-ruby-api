# DeliverrAPI::ParcelIntegrationTest

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_label_generation_job**](ParcelIntegrationTest.md#create_label_generation_job) | **POST** /parcel-integration/v1/job |  |


## create_label_generation_job

> <LabelGenerationJobResponse> create_label_generation_job(label_generation_job_request)



Initiate a label generation process.

### Examples

```ruby
require 'time'
require 'deliverr_api'
# setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DeliverrAPI::ParcelIntegrationTest.new
label_generation_job_request = DeliverrAPI::LabelGenerationJobRequest.new({integration_channel_id: DeliverrAPI::IntegrationChannelId::SHIPSTATION, estimated_order_count: 2500}) # LabelGenerationJobRequest | 

begin
  
  result = api_instance.create_label_generation_job(label_generation_job_request)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelIntegrationTest->create_label_generation_job: #{e}"
end
```

#### Using the create_label_generation_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelGenerationJobResponse>, Integer, Hash)> create_label_generation_job_with_http_info(label_generation_job_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_label_generation_job_with_http_info(label_generation_job_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelGenerationJobResponse>
rescue DeliverrAPI::ApiError => e
  puts "Error when calling ParcelIntegrationTest->create_label_generation_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_generation_job_request** | [**LabelGenerationJobRequest**](LabelGenerationJobRequest.md) |  |  |

### Return type

[**LabelGenerationJobResponse**](LabelGenerationJobResponse.md)

### Authorization

[OAuth2.0](../README.md#OAuth2.0)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

