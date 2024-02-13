# OpenapiClient::OfficialApi

All URIs are relative to *https://api.affixapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**official_companies20230301**](OfficialApi.md#official_companies20230301) | **GET** /2023-03-01/official/company | Company |
| [**official_create_employee20230301**](OfficialApi.md#official_create_employee20230301) | **POST** /2023-03-01/official/employee | Create Employee |
| [**official_employees20230301**](OfficialApi.md#official_employees20230301) | **GET** /2023-03-01/official/employees | Employees |
| [**official_groups20230301**](OfficialApi.md#official_groups20230301) | **GET** /2023-03-01/official/groups | Groups |
| [**official_time_off_balances20230301**](OfficialApi.md#official_time_off_balances20230301) | **GET** /2023-03-01/official/time-off-balances | Time off balances |
| [**official_time_off_entries20230301**](OfficialApi.md#official_time_off_entries20230301) | **GET** /2023-03-01/official/time-off-entries | Time off entries |
| [**official_timesheets20230301**](OfficialApi.md#official_timesheets20230301) | **GET** /2023-03-01/official/timesheets | Timesheets |
| [**official_work_locations20230301**](OfficialApi.md#official_work_locations20230301) | **GET** /2023-03-01/official/work-locations | Work locations |
| [**officialdentity20230301**](OfficialApi.md#officialdentity20230301) | **GET** /2023-03-01/official/identity | Identity |


## official_companies20230301

> <Array<CompanyResponse>> official_companies20230301

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

api_instance = OpenapiClient::OfficialApi.new

begin
  # Company
  result = api_instance.official_companies20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_companies20230301: #{e}"
end
```

#### Using the official_companies20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CompanyResponse>>, Integer, Hash)> official_companies20230301_with_http_info

```ruby
begin
  # Company
  data, status_code, headers = api_instance.official_companies20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CompanyResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_companies20230301_with_http_info: #{e}"
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


## official_create_employee20230301

> <EmployeeResponse> official_create_employee20230301(create_employee_request)

Create Employee

Creates a new Employee 

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

api_instance = OpenapiClient::OfficialApi.new
create_employee_request = OpenapiClient::CreateEmployeeRequest.new({first_name: 'Greg', last_name: 'Hirsch'}) # CreateEmployeeRequest | 

begin
  # Create Employee
  result = api_instance.official_create_employee20230301(create_employee_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_create_employee20230301: #{e}"
end
```

#### Using the official_create_employee20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeResponse>, Integer, Hash)> official_create_employee20230301_with_http_info(create_employee_request)

```ruby
begin
  # Create Employee
  data, status_code, headers = api_instance.official_create_employee20230301_with_http_info(create_employee_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_create_employee20230301_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_employee_request** | [**CreateEmployeeRequest**](CreateEmployeeRequest.md) |  |  |

### Return type

[**EmployeeResponse**](EmployeeResponse.md)

### Authorization

[access-token](../README.md#access-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## official_employees20230301

> <Array<EmployeeResponse>> official_employees20230301

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

api_instance = OpenapiClient::OfficialApi.new

begin
  # Employees
  result = api_instance.official_employees20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_employees20230301: #{e}"
end
```

#### Using the official_employees20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EmployeeResponse>>, Integer, Hash)> official_employees20230301_with_http_info

```ruby
begin
  # Employees
  data, status_code, headers = api_instance.official_employees20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EmployeeResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_employees20230301_with_http_info: #{e}"
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


## official_groups20230301

> <Array<GroupResponse>> official_groups20230301

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

api_instance = OpenapiClient::OfficialApi.new

begin
  # Groups
  result = api_instance.official_groups20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_groups20230301: #{e}"
end
```

#### Using the official_groups20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GroupResponse>>, Integer, Hash)> official_groups20230301_with_http_info

```ruby
begin
  # Groups
  data, status_code, headers = api_instance.official_groups20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GroupResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_groups20230301_with_http_info: #{e}"
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


## official_time_off_balances20230301

> <Array<TimeOffBalanceResponse>> official_time_off_balances20230301

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

api_instance = OpenapiClient::OfficialApi.new

begin
  # Time off balances
  result = api_instance.official_time_off_balances20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_time_off_balances20230301: #{e}"
end
```

#### Using the official_time_off_balances20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TimeOffBalanceResponse>>, Integer, Hash)> official_time_off_balances20230301_with_http_info

```ruby
begin
  # Time off balances
  data, status_code, headers = api_instance.official_time_off_balances20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TimeOffBalanceResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_time_off_balances20230301_with_http_info: #{e}"
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


## official_time_off_entries20230301

> <Array<TimeOffEntryResponse>> official_time_off_entries20230301

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

api_instance = OpenapiClient::OfficialApi.new

begin
  # Time off entries
  result = api_instance.official_time_off_entries20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_time_off_entries20230301: #{e}"
end
```

#### Using the official_time_off_entries20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TimeOffEntryResponse>>, Integer, Hash)> official_time_off_entries20230301_with_http_info

```ruby
begin
  # Time off entries
  data, status_code, headers = api_instance.official_time_off_entries20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TimeOffEntryResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_time_off_entries20230301_with_http_info: #{e}"
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


## official_timesheets20230301

> <Array<TimesheetResponse>> official_timesheets20230301

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

api_instance = OpenapiClient::OfficialApi.new

begin
  # Timesheets
  result = api_instance.official_timesheets20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_timesheets20230301: #{e}"
end
```

#### Using the official_timesheets20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TimesheetResponse>>, Integer, Hash)> official_timesheets20230301_with_http_info

```ruby
begin
  # Timesheets
  data, status_code, headers = api_instance.official_timesheets20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TimesheetResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_timesheets20230301_with_http_info: #{e}"
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


## official_work_locations20230301

> <Array<LocationResponse>> official_work_locations20230301

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

api_instance = OpenapiClient::OfficialApi.new

begin
  # Work locations
  result = api_instance.official_work_locations20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_work_locations20230301: #{e}"
end
```

#### Using the official_work_locations20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LocationResponse>>, Integer, Hash)> official_work_locations20230301_with_http_info

```ruby
begin
  # Work locations
  data, status_code, headers = api_instance.official_work_locations20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LocationResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->official_work_locations20230301_with_http_info: #{e}"
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


## officialdentity20230301

> <IdentityResponse> officialdentity20230301

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

api_instance = OpenapiClient::OfficialApi.new

begin
  # Identity
  result = api_instance.officialdentity20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->officialdentity20230301: #{e}"
end
```

#### Using the officialdentity20230301_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityResponse>, Integer, Hash)> officialdentity20230301_with_http_info

```ruby
begin
  # Identity
  data, status_code, headers = api_instance.officialdentity20230301_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OfficialApi->officialdentity20230301_with_http_info: #{e}"
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

