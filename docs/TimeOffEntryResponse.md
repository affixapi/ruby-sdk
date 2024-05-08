# OpenapiClient::TimeOffEntryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Affix-assigned id of the time off entry |  |
| **remote_id** | **String** | the remote system-assigned id of the time off entry |  |
| **employee_id** | **String** | the Affix-assigned id of the individual |  |
| **employee_remote_id** | **String** | the remote system-assigned id of the individual |  |
| **start_date** | **Date** |  |  |
| **end_date** | **Date** |  |  |
| **amount** | **Float** |  |  |
| **unit** | **String** |  |  |
| **status** | **String** |  |  |
| **employee_note** | **String** |  |  |
| **policy_id** | **String** | The Affix-assigned id of the policy |  |
| **policy_remote_id** | **String** | The remote system-assigned id of the policy |  |
| **policy_name** | **String** | The name of the policy, as assigned by the remote system |  |
| **policy_type** | [**PolicyTypeResponse**](PolicyTypeResponse.md) |  |  |
| **remote_created_at** | **Date** |  |  |
| **remote_modified_at** | **Date** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TimeOffEntryResponse.new(
  id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  remote_id: 19202938,
  employee_id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  employee_remote_id: 19202938,
  start_date: Sun Oct 11 00:00:00 UTC 2020,
  end_date: Wed Oct 14 00:00:00 UTC 2020,
  amount: 3,
  unit: days,
  status: approved,
  employee_note: Visiting my family,
  policy_id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  policy_remote_id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  policy_name: Comp/In Lieu Time,
  policy_type: null,
  remote_created_at: Sun Oct 11 00:00:00 UTC 2020,
  remote_modified_at: Mon Oct 12 00:00:00 UTC 2020
)
```

