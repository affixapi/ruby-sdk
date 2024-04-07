# OpenapiClient::EmployeeResponseManager

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **id** | **String** | the Affix-assigned ID of the individual. Nullable if the system only reports the name of the manager; not their ID  |  |
| **work_email** | **String** |  |  |
| **remote_id** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EmployeeResponseManager.new(
  first_name: null,
  last_name: null,
  id: null,
  work_email: null,
  remote_id: null
)
```

