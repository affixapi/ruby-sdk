# OpenapiClient::EmploymentHistoryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_title** | **String** |  |  |
| **effective_date** | **Date** |  |  |
| **group_id** | **String** |  |  |
| **group_remote_id** | **String** |  |  |
| **group_name** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EmploymentHistoryResponse.new(
  job_title: Software Developer,
  effective_date: Sun Oct 11 00:00:00 UTC 2020,
  group_id: 4B9bKBpX5tnwjiG93TAqF7ci,
  group_remote_id: 49,
  group_name: Engineering
)
```

