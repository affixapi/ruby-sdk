# OpenapiClient::CompensationHistoryNoNonNullRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pay_rate** | **Float** |  |  |
| **pay_period** | **String** |  |  |
| **pay_frequency** | **String** |  |  |
| **employment_type** | **String** |  |  |
| **currency** | [**CurrencyRequest**](CurrencyRequest.md) |  |  |
| **effective_date** | **Date** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CompensationHistoryNoNonNullRequest.new(
  pay_rate: 85000,
  pay_period: year,
  pay_frequency: semimonthly,
  employment_type: full_time,
  currency: null,
  effective_date: Sun Oct 11 00:00:00 UTC 2020
)
```

