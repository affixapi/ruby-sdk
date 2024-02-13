# OpenapiClient::AddressNoNonNullRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_address** | **String** |  |  |
| **locality** | **String** |  |  |
| **administrative_area** | **String** | The administrative area of the address. If US or CA, the two-letter state or province abbreviation. Else, the province / administrative area; such as, &#x60;Dublin 2&#x60; or &#x60;County Cork&#x60;  |  |
| **country** | **String** | The ISO-3166-2 two-letter abbreviation of the country. Reference https://en.wikipedia.org/wiki/ISO_3166-2 for more details  |  |
| **post_code** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressNoNonNullRequest.new(
  street_address: 221 S Main Street,
  locality: Yuma,
  administrative_area: AZ,
  country: IE,
  post_code: 30691
)
```

