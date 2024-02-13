# OpenapiClient::EmploymentNoNullEnumRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_title** | **String** |  |  |
| **pay_rate** | **Float** |  |  |
| **pay_period** | **String** |  |  |
| **pay_frequency** | **String** |  |  |
| **employment_type** | **String** |  |  |
| **currency** | [**CurrencyRequest**](CurrencyRequest.md) |  |  |
| **effective_date** | **Date** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EmploymentNoNullEnumRequest.new(
  job_title: Software Developer,
  pay_rate: 85000,
  pay_period: year,
  pay_frequency: semimonthly,
  employment_type: full_time,
  currency: null,
  effective_date: Sun Oct 11 00:00:00 UTC 2020
)
```

