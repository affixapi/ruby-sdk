# OpenapiClient::TimesheetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Affix-assigned id of the time off entry |  |
| **remote_id** | **String** | the remote system-assigned id of the time off entry |  |
| **employee_id** | **String** | the Affix-assigned id of the individual |  |
| **remote_employee_id** | **String** | the remote system-assigned id of the individual |  |
| **start_time** | **Time** |  |  |
| **end_time** | **Time** |  |  |
| **hours_worked** | **Float** |  |  |
| **remote_created_at** | **Date** |  |  |
| **remote_modified_at** | **Date** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TimesheetResponse.new(
  id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  remote_id: 19202938,
  employee_id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  remote_employee_id: 19202938,
  start_time: 2020-10-11T08:00Z,
  end_time: 2020-10-11T17:00Z,
  hours_worked: 8,
  remote_created_at: Sun Oct 11 00:00:00 UTC 2020,
  remote_modified_at: Mon Oct 12 00:00:00 UTC 2020
)
```

