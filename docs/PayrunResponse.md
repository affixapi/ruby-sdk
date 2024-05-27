# OpenapiClient::PayrunResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Affix-assigned id of the individual |  |
| **remote_id** | **String** | the remote system-assigned id of the payrun |  |
| **state** | **String** |  |  |
| **type** | [**PayrunTypeResponse**](PayrunTypeResponse.md) |  |  |
| **start_date** | **Date** | Payrun period start date |  |
| **end_date** | **Date** | Payrun period end date |  |
| **payment_date** | **Date** | Payment date / check date |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayrunResponse.new(
  id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  remote_id: 19202938,
  state: paid,
  type: null,
  start_date: Wed Jan 01 00:00:00 UTC 2020,
  end_date: Fri Jan 31 00:00:00 UTC 2020,
  payment_date: Mon Jan 27 00:00:00 UTC 2020
)
```

