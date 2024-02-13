# OpenapiClient::PayslipResponseTaxes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **amount** | **Float** | if USD/EUR/GBP, in cent |  |
| **employer_tax** | **Boolean** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayslipResponseTaxes.new(
  name: Income Tax,
  amount: 10025,
  employer_tax: null
)
```

