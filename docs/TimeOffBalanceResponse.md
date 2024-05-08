# OpenapiClient::TimeOffBalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_id** | **String** | The Affix-assigned id of the individual |  |
| **employee_remote_id** | **String** | the remote system-assigned id of the individual |  |
| **balance** | **Float** |  |  |
| **used** | **Float** |  |  |
| **policy_id** | **String** | The Affix-assigned id of the policy |  |
| **policy_remote_id** | **String** | The remote system-assigned id of the policy |  |
| **policy_name** | **String** | The name of the policy, as assigned by the remote system |  |
| **policy_type** | [**PolicyTypeResponse**](PolicyTypeResponse.md) |  |  |
| **remote_created_at** | **Date** |  |  |
| **remote_modified_at** | **Date** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TimeOffBalanceResponse.new(
  employee_id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  employee_remote_id: 19202938,
  balance: 24.5,
  used: 12,
  policy_id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  policy_remote_id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  policy_name: Comp/In Lieu Time,
  policy_type: null,
  remote_created_at: Sun Oct 11 00:00:00 UTC 2020,
  remote_modified_at: Sun Oct 11 00:00:00 UTC 2020
)
```

