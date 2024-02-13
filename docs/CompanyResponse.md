# OpenapiClient::CompanyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Affix-assigned id of the abscence |  |
| **remote_id** | **String** | the remote system-assigned id of the abscence |  |
| **legal_name** | **String** |  |  |
| **display_name** | **String** |  |  |
| **tax_id** | **String** |  |  |
| **address** | [**AddressResponse**](AddressResponse.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CompanyResponse.new(
  id: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  remote_id: 19202938,
  legal_name: Affix,
  display_name: Affix API Limited,
  tax_id: 12-3456789,
  address: null
)
```

