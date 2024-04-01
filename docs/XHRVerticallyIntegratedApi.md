# OpenapiClient::XHRVerticallyIntegratedApi

All URIs are relative to *https://api.affixapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**xhr_companies20230301**](XHRVerticallyIntegratedApi.md#xhr_companies20230301) | **GET** /2023-03-01/xhr/company | Company |
| [**xhr_employees20230301**](XHRVerticallyIntegratedApi.md#xhr_employees20230301) | **GET** /2023-03-01/xhr/employees | Employees |
| [**xhr_groups20230301**](XHRVerticallyIntegratedApi.md#xhr_groups20230301) | **GET** /2023-03-01/xhr/groups | Groups |
| [**xhr_identity20230301**](XHRVerticallyIntegratedApi.md#xhr_identity20230301) | **GET** /2023-03-01/xhr/identity | Identity |
| [**xhr_payruns20230301**](XHRVerticallyIntegratedApi.md#xhr_payruns20230301) | **GET** /2023-03-01/xhr/payruns | Payruns |
| [**xhr_payslips20230301**](XHRVerticallyIntegratedApi.md#xhr_payslips20230301) | **GET** /2023-03-01/xhr/payruns/{payrun_id} | Payslips |
| [**xhr_time_off_balances20230301**](XHRVerticallyIntegratedApi.md#xhr_time_off_balances20230301) | **GET** /2023-03-01/xhr/time-off-balances | Time off balances |
| [**xhr_time_off_entries20230301**](XHRVerticallyIntegratedApi.md#xhr_time_off_entries20230301) | **GET** /2023-03-01/xhr/time-off-entries | Time off entries |
| [**xhr_timesheets20230301**](XHRVerticallyIntegratedApi.md#xhr_timesheets20230301) | **GET** /2023-03-01/xhr/timesheets | Timesheets |
| [**xhr_work_locations20230301**](XHRVerticallyIntegratedApi.md#xhr_work_locations20230301) | **GET** /2023-03-01/xhr/work-locations | Work locations |


## xhr_companies20230301

> <Array<CompanyResponse>> xhr_companies20230301

Company

Retrieve company information 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new

begin
  # Company
  result = api_instance.xhr_companies20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_companies20230301: #{e}"
end
```

#### Using the xhr_companies20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CompanyResponse>>, Integer, Hash)> xhr_companies20230301_with_http_info

```ruby
begin
  # Company
  data, status_code, headers = api_instance.xhr_companies20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CompanyResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_companies20230301_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CompanyResponse&gt;**](CompanyResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## xhr_employees20230301

> <Array<EmployeeResponse>> xhr_employees20230301

Employees

List the individuals (employees, contractors, accountants, and others) listed in the HRIS/Payroll software 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new

begin
  # Employees
  result = api_instance.xhr_employees20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_employees20230301: #{e}"
end
```

#### Using the xhr_employees20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EmployeeResponse>>, Integer, Hash)> xhr_employees20230301_with_http_info

```ruby
begin
  # Employees
  data, status_code, headers = api_instance.xhr_employees20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EmployeeResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_employees20230301_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;EmployeeResponse&gt;**](EmployeeResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## xhr_groups20230301

> <Array<GroupResponse>> xhr_groups20230301

Groups

The Group object is used to represent any subset of employees, such as PayGroup, Team, or Department. Employees can be in multiple Groups. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new

begin
  # Groups
  result = api_instance.xhr_groups20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_groups20230301: #{e}"
end
```

#### Using the xhr_groups20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GroupResponse>>, Integer, Hash)> xhr_groups20230301_with_http_info

```ruby
begin
  # Groups
  data, status_code, headers = api_instance.xhr_groups20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GroupResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_groups20230301_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;GroupResponse&gt;**](GroupResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## xhr_identity20230301

> <IdentityResponse> xhr_identity20230301

Identity

List information of the user for the respective account 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new

begin
  # Identity
  result = api_instance.xhr_identity20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_identity20230301: #{e}"
end
```

#### Using the xhr_identity20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityResponse>, Integer, Hash)> xhr_identity20230301_with_http_info

```ruby
begin
  # Identity
  data, status_code, headers = api_instance.xhr_identity20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_identity20230301_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IdentityResponse**](IdentityResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## xhr_payruns20230301

> <Array<PayrunResponse>> xhr_payruns20230301(start_date, end_date)

Payruns

List all the pay runs that occurred during the respective period.  Supported integrations:   - sageone   - simplepay.ie   - brightpay connect 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new
start_date = Date.parse('2013-10-20') # Date | The start date of the search period
end_date = Date.parse('2013-10-20') # Date | The end date of the search period

begin
  # Payruns
  result = api_instance.xhr_payruns20230301(start_date, end_date)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_payruns20230301: #{e}"
end
```

#### Using the xhr_payruns20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PayrunResponse>>, Integer, Hash)> xhr_payruns20230301_with_http_info(start_date, end_date)

```ruby
begin
  # Payruns
  data, status_code, headers = api_instance.xhr_payruns20230301_with_http_info(start_date, end_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PayrunResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_payruns20230301_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Date** | The start date of the search period |  |
| **end_date** | **Date** | The end date of the search period |  |

### Return type

[**Array&lt;PayrunResponse&gt;**](PayrunResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## xhr_payslips20230301

> <Array<PayslipResponse>> xhr_payslips20230301(payrun_id)

Payslips

Retrieves payslips from a specific payrun.  Supported integrations:   - sageone   - simplepay.ie   - brightpay connect 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new
payrun_id = 'payrun_id_example' # String | The id of the payrun.

begin
  # Payslips
  result = api_instance.xhr_payslips20230301(payrun_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_payslips20230301: #{e}"
end
```

#### Using the xhr_payslips20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PayslipResponse>>, Integer, Hash)> xhr_payslips20230301_with_http_info(payrun_id)

```ruby
begin
  # Payslips
  data, status_code, headers = api_instance.xhr_payslips20230301_with_http_info(payrun_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PayslipResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_payslips20230301_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payrun_id** | **String** | The id of the payrun. |  |

### Return type

[**Array&lt;PayslipResponse&gt;**](PayslipResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## xhr_time_off_balances20230301

> <Array<TimeOffBalanceResponse>> xhr_time_off_balances20230301

Time off balances

Retrieve all time off balances. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new

begin
  # Time off balances
  result = api_instance.xhr_time_off_balances20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_time_off_balances20230301: #{e}"
end
```

#### Using the xhr_time_off_balances20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TimeOffBalanceResponse>>, Integer, Hash)> xhr_time_off_balances20230301_with_http_info

```ruby
begin
  # Time off balances
  data, status_code, headers = api_instance.xhr_time_off_balances20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TimeOffBalanceResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_time_off_balances20230301_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;TimeOffBalanceResponse&gt;**](TimeOffBalanceResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## xhr_time_off_entries20230301

> <Array<TimeOffEntryResponse>> xhr_time_off_entries20230301

Time off entries

Retrieve time off / absence entries 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new

begin
  # Time off entries
  result = api_instance.xhr_time_off_entries20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_time_off_entries20230301: #{e}"
end
```

#### Using the xhr_time_off_entries20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TimeOffEntryResponse>>, Integer, Hash)> xhr_time_off_entries20230301_with_http_info

```ruby
begin
  # Time off entries
  data, status_code, headers = api_instance.xhr_time_off_entries20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TimeOffEntryResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_time_off_entries20230301_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;TimeOffEntryResponse&gt;**](TimeOffEntryResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## xhr_timesheets20230301

> <Array<TimesheetResponse>> xhr_timesheets20230301

Timesheets

Retrieve Timesheets 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new

begin
  # Timesheets
  result = api_instance.xhr_timesheets20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_timesheets20230301: #{e}"
end
```

#### Using the xhr_timesheets20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TimesheetResponse>>, Integer, Hash)> xhr_timesheets20230301_with_http_info

```ruby
begin
  # Timesheets
  data, status_code, headers = api_instance.xhr_timesheets20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TimesheetResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_timesheets20230301_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;TimesheetResponse&gt;**](TimesheetResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## xhr_work_locations20230301

> <Array<LocationResponse>> xhr_work_locations20230301

Work locations

The Location object is used to represent an address that can be associated with an employee 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::XHRVerticallyIntegratedApi.new

begin
  # Work locations
  result = api_instance.xhr_work_locations20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_work_locations20230301: #{e}"
end
```

#### Using the xhr_work_locations20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LocationResponse>>, Integer, Hash)> xhr_work_locations20230301_with_http_info

```ruby
begin
  # Work locations
  data, status_code, headers = api_instance.xhr_work_locations20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LocationResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling XHRVerticallyIntegratedApi->xhr_work_locations20230301_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;LocationResponse&gt;**](LocationResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

