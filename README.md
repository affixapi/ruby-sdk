# openapi_client

OpenapiClient - the Ruby gem for the Affix API

The affixapi.com API documentation.

# Introduction
Affix API is an OAuth 2.1 application that allows developers to access
customer data, without developers needing to manage or maintain
integrations; or collect login credentials or API keys from users for these
third party systems.

# OAuth 2.1
Affix API follows the [OAuth 2.1 spec](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-v2-1-08).

As an OAuth application, Affix API handles not only both the collection of
sensitive user credentials or API keys, but also builds and maintains the
integrations with the providers, so you don't have to.

# How to obtain an access token
in order to get started, you must:
  - register a `client_id`
  - direct your user to the sign in flow  (`https://connect.affixapi.com`
    [with the appropriate query
    parameters](https://github.com/affixapi/starter-kit/tree/master/connect))
  - capture `authorization_code` we will send to your redirect URI after
    the sign in flow is complete and exchange that `authorization_code` for
    a Bearer token

# Sandbox keys (developer mode)
### dev
```
eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6ImQ1OTZhMmYzLWYzNzktNGE1ZC1hMmRhLTk4OWJmYWViYTg1ZCIsImlhdCI6MTcwMjkyMDkwMywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5kZXYuZW5naW5lZXJpbmcuYWZmaXhhcGkuY29tIiwic3ViIjoiZGV2ZWxvcGVyIiwiYXVkIjoiM0ZEQUVERjktMURDQTRGNTQtODc5NDlGNkEtNDEwMjc2NDMifQ.VLWYjCQvBS0C3ZA6_J3-U-idZj5EYI2IlDdTjAWBxSIHGufp6cqaVodKsF2BeIqcIeB3P0lW-KL9mY3xGd7ckQ
```

#### `employees` endpoint sample:
```
curl --fail \\
  -X GET \\
  -H 'Authorization: Bearer eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6ImQ1OTZhMmYzLWYzNzktNGE1ZC1hMmRhLTk4OWJmYWViYTg1ZCIsImlhdCI6MTcwMjkyMDkwMywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5kZXYuZW5naW5lZXJpbmcuYWZmaXhhcGkuY29tIiwic3ViIjoiZGV2ZWxvcGVyIiwiYXVkIjoiM0ZEQUVERjktMURDQTRGNTQtODc5NDlGNkEtNDEwMjc2NDMifQ.VLWYjCQvBS0C3ZA6_J3-U-idZj5EYI2IlDdTjAWBxSIHGufp6cqaVodKsF2BeIqcIeB3P0lW-KL9mY3xGd7ckQ' \\
  'https://dev.api.affixapi.com/2023-03-01/developer/employees'
```

### prod
```
eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6IjI5YjFjYTg4LWNlNjktNDgyZC1iNGZjLTkzMWMzZmJkYWM4ZSIsImlhdCI6MTcwMjkyMTA4MywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5wcm9kLmVuZ2luZWVyaW5nLmFmZml4YXBpLmNvbSIsInN1YiI6ImRldmVsb3BlciIsImF1ZCI6IjA4QkIwODFFLUQ5QUI0RDE0LThERjk5MjMzLTY2NjE1Q0U5In0.2zdpFAmiyYiYk6MOcbXNUwwR4M1Fextnaac340x54AidiWXCyw-u9KeavbqfYF6q8a9kcDLrxhJ8Wc_3tIzuVw
```

#### `employees` endpoint sample:
```
curl --fail \\
  -X GET \\
  -H 'Authorization: Bearer eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6IjI5YjFjYTg4LWNlNjktNDgyZC1iNGZjLTkzMWMzZmJkYWM4ZSIsImlhdCI6MTcwMjkyMTA4MywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5wcm9kLmVuZ2luZWVyaW5nLmFmZml4YXBpLmNvbSIsInN1YiI6ImRldmVsb3BlciIsImF1ZCI6IjA4QkIwODFFLUQ5QUI0RDE0LThERjk5MjMzLTY2NjE1Q0U5In0.2zdpFAmiyYiYk6MOcbXNUwwR4M1Fextnaac340x54AidiWXCyw-u9KeavbqfYF6q8a9kcDLrxhJ8Wc_3tIzuVw' \\
  'https://api.affixapi.com/2023-03-01/developer/employees'
```

# Webhooks
An exciting feature for HR/Payroll modes are webhooks.

If enabled, your `webhook_uri` is set on your `client_id` for the
respective environment: `dev | prod`

Webhooks are configured to make live requests to the underlying integration
1x/hr, and if a difference is detected since the last request, we will send a
request to your `webhook_uri` with this shape:

```
{

  added: <api.v20230301.Employees>[
    <api.v20230301.Employee>{
      ...,
      date_of_birth: '2010-08-06',
      display_full_name: 'Daija Rogahn',
      employee_number: '57993',
      employment_status: 'pending',
      employment_type: 'other',
      employments: [
        {
          currency: 'eur',
          effective_date: '2022-02-25',
          employment_type: 'other',
          job_title: 'Dynamic Implementation Manager',
          pay_frequency: 'semimonthly',
          pay_period: 'YEAR',
          pay_rate: 96000,
        },
      ],
      first_name: 'Daija',
      ...
    }
  ],
  removed: [],
  updated: [
    <api.v20230301.Employee>{
      ...,
      date_of_birth: '2009-11-09',
      display_full_name: 'Lourdes Stiedemann',
      employee_number: '63189',
      employment_status: 'leave',
      employment_type: 'full_time',
      employments: [
        {
          currency: 'gbp',
          effective_date: '2023-01-16',
          employment_type: 'full_time',
          job_title: 'Forward Brand Planner',
          pay_frequency: 'semimonthly',
          pay_period: 'YEAR',
          pay_rate: 86000,
        },
      ],
      first_name: 'Lourdes',
    }
  ]
}
```

the following headers will be sent with webhook requests:

```
x-affix-api-signature: ab8474e609db95d5df3adc39ea3add7a7544bd215c5c520a30a650ae93a2fba7

x-affix-api-origin:  webhooks-employees-webhook

user-agent:  affixapi.com
```

Before trusting the payload, you should sign the payload and verify the
signature matches the signature sent by the `affixapi.com` service.

This secures that the data sent to your `webhook_uri` is from the
`affixapi.com` server.

The signature is created by combining the signing secret (your
`client_secret`) with the body of the request sent using a standard
HMAC-SHA256 keyed hash.

The signature can be created via:
  - create an `HMAC` with your `client_secret`
  - update the `HMAC` with the payload
  - get the hex digest -> this is the signature

Sample `typescript` code that follows this recipe:

```
import { createHmac } from 'crypto';

export const computeSignature = ({
  str,
  signingSecret,
}: {
  signingSecret: string;
  str: string;
}): string => {
  const hmac = createHmac('sha256', signingSecret);
  hmac.update(str);
  const signature = hmac.digest('hex');

  return signature;
};
```

## Rate limits
Open endpoints (not gated by an API key) (applied at endpoint level):
  - 15 requests every 1 minute (by IP address)
  - 25 requests every 5 minutes (by IP address)

Gated endpoints (require an API key) (applied at endpoint level):
  - 40 requests every 1 minute (by IP address)
  - 40 requests every 5 minutes (by `client_id`)

Things to keep in mind:
  - Open endpoints (not gated by an API key) will likely be called by your
    users, not you, so rate limits generally would not apply to you.
  - As a developer, rate limits are applied at the endpoint granularity.
    - For example, say the rate limits below are 10 requests per minute by ip.
      from that same ip, within 1 minute, you get:
      - 10 requests per minute on `/orders`,
      - another 10 requests per minute on `/items`,
      - and another 10 requests per minute on `/identity`,
      - for a total of 30 requests per minute.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2023-03-01
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: access-token
  config.api_key['access-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['access-token'] = 'Bearer'
end

api_instance = OpenapiClient::Class20230301Api.new

begin
  #Company
  result = api_instance.developer_companies20230301
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class20230301Api->developer_companies20230301: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.affixapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::Class20230301Api* | [**developer_companies20230301**](docs/Class20230301Api.md#developer_companies20230301) | **GET** /2023-03-01/developer/company | Company
*OpenapiClient::Class20230301Api* | [**developer_create_employee20230301**](docs/Class20230301Api.md#developer_create_employee20230301) | **POST** /2023-03-01/developer/employee | Create employee
*OpenapiClient::Class20230301Api* | [**developer_employees20230301**](docs/Class20230301Api.md#developer_employees20230301) | **GET** /2023-03-01/developer/employees | Employees
*OpenapiClient::Class20230301Api* | [**developer_groups20230301**](docs/Class20230301Api.md#developer_groups20230301) | **GET** /2023-03-01/developer/groups | Groups
*OpenapiClient::Class20230301Api* | [**developer_identity20230301**](docs/Class20230301Api.md#developer_identity20230301) | **GET** /2023-03-01/developer/identity | Identity
*OpenapiClient::Class20230301Api* | [**developer_payruns20230301**](docs/Class20230301Api.md#developer_payruns20230301) | **GET** /2023-03-01/developer/payruns | Payruns
*OpenapiClient::Class20230301Api* | [**developer_payslips20230301**](docs/Class20230301Api.md#developer_payslips20230301) | **GET** /2023-03-01/developer/payruns/{payrun_id} | Payslips
*OpenapiClient::Class20230301Api* | [**developer_time_off_balances20230301**](docs/Class20230301Api.md#developer_time_off_balances20230301) | **GET** /2023-03-01/developer/time-off-balances | Time off balances
*OpenapiClient::Class20230301Api* | [**developer_time_off_entries20230301**](docs/Class20230301Api.md#developer_time_off_entries20230301) | **GET** /2023-03-01/developer/time-off-entries | Time off entries
*OpenapiClient::Class20230301Api* | [**developer_timesheets20230301**](docs/Class20230301Api.md#developer_timesheets20230301) | **GET** /2023-03-01/developer/timesheets | Timesheets
*OpenapiClient::Class20230301Api* | [**developer_work_locations20230301**](docs/Class20230301Api.md#developer_work_locations20230301) | **GET** /2023-03-01/developer/work-locations | Work locations
*OpenapiClient::Class20230301Api* | [**official_companies20230301**](docs/Class20230301Api.md#official_companies20230301) | **GET** /2023-03-01/official/company | Company
*OpenapiClient::Class20230301Api* | [**official_create_employee20230301**](docs/Class20230301Api.md#official_create_employee20230301) | **POST** /2023-03-01/official/employee | Create Employee
*OpenapiClient::Class20230301Api* | [**official_employees20230301**](docs/Class20230301Api.md#official_employees20230301) | **GET** /2023-03-01/official/employees | Employees
*OpenapiClient::Class20230301Api* | [**official_groups20230301**](docs/Class20230301Api.md#official_groups20230301) | **GET** /2023-03-01/official/groups | Groups
*OpenapiClient::Class20230301Api* | [**official_time_off_balances20230301**](docs/Class20230301Api.md#official_time_off_balances20230301) | **GET** /2023-03-01/official/time-off-balances | Time off balances
*OpenapiClient::Class20230301Api* | [**official_time_off_entries20230301**](docs/Class20230301Api.md#official_time_off_entries20230301) | **GET** /2023-03-01/official/time-off-entries | Time off entries
*OpenapiClient::Class20230301Api* | [**official_timesheets20230301**](docs/Class20230301Api.md#official_timesheets20230301) | **GET** /2023-03-01/official/timesheets | Timesheets
*OpenapiClient::Class20230301Api* | [**official_work_locations20230301**](docs/Class20230301Api.md#official_work_locations20230301) | **GET** /2023-03-01/official/work-locations | Work locations
*OpenapiClient::Class20230301Api* | [**officialdentity20230301**](docs/Class20230301Api.md#officialdentity20230301) | **GET** /2023-03-01/official/identity | Identity
*OpenapiClient::CoreApi* | [**providers**](docs/CoreApi.md#providers) | **GET** /providers | Providers
*OpenapiClient::DeveloperApi* | [**developer_companies20230301**](docs/DeveloperApi.md#developer_companies20230301) | **GET** /2023-03-01/developer/company | Company
*OpenapiClient::DeveloperApi* | [**developer_create_employee20230301**](docs/DeveloperApi.md#developer_create_employee20230301) | **POST** /2023-03-01/developer/employee | Create employee
*OpenapiClient::DeveloperApi* | [**developer_employees20230301**](docs/DeveloperApi.md#developer_employees20230301) | **GET** /2023-03-01/developer/employees | Employees
*OpenapiClient::DeveloperApi* | [**developer_groups20230301**](docs/DeveloperApi.md#developer_groups20230301) | **GET** /2023-03-01/developer/groups | Groups
*OpenapiClient::DeveloperApi* | [**developer_identity20230301**](docs/DeveloperApi.md#developer_identity20230301) | **GET** /2023-03-01/developer/identity | Identity
*OpenapiClient::DeveloperApi* | [**developer_payruns20230301**](docs/DeveloperApi.md#developer_payruns20230301) | **GET** /2023-03-01/developer/payruns | Payruns
*OpenapiClient::DeveloperApi* | [**developer_payslips20230301**](docs/DeveloperApi.md#developer_payslips20230301) | **GET** /2023-03-01/developer/payruns/{payrun_id} | Payslips
*OpenapiClient::DeveloperApi* | [**developer_time_off_balances20230301**](docs/DeveloperApi.md#developer_time_off_balances20230301) | **GET** /2023-03-01/developer/time-off-balances | Time off balances
*OpenapiClient::DeveloperApi* | [**developer_time_off_entries20230301**](docs/DeveloperApi.md#developer_time_off_entries20230301) | **GET** /2023-03-01/developer/time-off-entries | Time off entries
*OpenapiClient::DeveloperApi* | [**developer_timesheets20230301**](docs/DeveloperApi.md#developer_timesheets20230301) | **GET** /2023-03-01/developer/timesheets | Timesheets
*OpenapiClient::DeveloperApi* | [**developer_work_locations20230301**](docs/DeveloperApi.md#developer_work_locations20230301) | **GET** /2023-03-01/developer/work-locations | Work locations
*OpenapiClient::ManagementApi* | [**client**](docs/ManagementApi.md#client) | **GET** /2023-03-01/management/client | Client
*OpenapiClient::ManagementApi* | [**disconnect**](docs/ManagementApi.md#disconnect) | **POST** /2023-03-01/management/disconnect | Disconnect token
*OpenapiClient::ManagementApi* | [**introspect**](docs/ManagementApi.md#introspect) | **GET** /2023-03-01/management/introspect | Inspect token
*OpenapiClient::ManagementApi* | [**token**](docs/ManagementApi.md#token) | **POST** /2023-03-01/management/token | Create token
*OpenapiClient::ManagementApi* | [**tokens**](docs/ManagementApi.md#tokens) | **GET** /2023-03-01/management/tokens | Tokens
*OpenapiClient::ManagementApi* | [**update_client**](docs/ManagementApi.md#update_client) | **POST** /2023-03-01/management/client | Update client
*OpenapiClient::OfficialApi* | [**official_companies20230301**](docs/OfficialApi.md#official_companies20230301) | **GET** /2023-03-01/official/company | Company
*OpenapiClient::OfficialApi* | [**official_create_employee20230301**](docs/OfficialApi.md#official_create_employee20230301) | **POST** /2023-03-01/official/employee | Create Employee
*OpenapiClient::OfficialApi* | [**official_employees20230301**](docs/OfficialApi.md#official_employees20230301) | **GET** /2023-03-01/official/employees | Employees
*OpenapiClient::OfficialApi* | [**official_groups20230301**](docs/OfficialApi.md#official_groups20230301) | **GET** /2023-03-01/official/groups | Groups
*OpenapiClient::OfficialApi* | [**official_time_off_balances20230301**](docs/OfficialApi.md#official_time_off_balances20230301) | **GET** /2023-03-01/official/time-off-balances | Time off balances
*OpenapiClient::OfficialApi* | [**official_time_off_entries20230301**](docs/OfficialApi.md#official_time_off_entries20230301) | **GET** /2023-03-01/official/time-off-entries | Time off entries
*OpenapiClient::OfficialApi* | [**official_timesheets20230301**](docs/OfficialApi.md#official_timesheets20230301) | **GET** /2023-03-01/official/timesheets | Timesheets
*OpenapiClient::OfficialApi* | [**official_work_locations20230301**](docs/OfficialApi.md#official_work_locations20230301) | **GET** /2023-03-01/official/work-locations | Work locations
*OpenapiClient::OfficialApi* | [**officialdentity20230301**](docs/OfficialApi.md#officialdentity20230301) | **GET** /2023-03-01/official/identity | Identity


## Documentation for Models

 - [OpenapiClient::AddressNoNonNullRequest](docs/AddressNoNonNullRequest.md)
 - [OpenapiClient::AddressResponse](docs/AddressResponse.md)
 - [OpenapiClient::ClientRequest](docs/ClientRequest.md)
 - [OpenapiClient::ClientResponse](docs/ClientResponse.md)
 - [OpenapiClient::CompanyResponse](docs/CompanyResponse.md)
 - [OpenapiClient::CreateEmployeeRequest](docs/CreateEmployeeRequest.md)
 - [OpenapiClient::CreateEmployeeRequestBankAccount](docs/CreateEmployeeRequestBankAccount.md)
 - [OpenapiClient::CreateEmployeeRequestManager](docs/CreateEmployeeRequestManager.md)
 - [OpenapiClient::CurrencyRequest](docs/CurrencyRequest.md)
 - [OpenapiClient::CurrencyResponse](docs/CurrencyResponse.md)
 - [OpenapiClient::DisconnectResponse](docs/DisconnectResponse.md)
 - [OpenapiClient::EmployeeResponse](docs/EmployeeResponse.md)
 - [OpenapiClient::EmploymentNoNullEnumRequest](docs/EmploymentNoNullEnumRequest.md)
 - [OpenapiClient::EmploymentResponse](docs/EmploymentResponse.md)
 - [OpenapiClient::GroupNoNullEnumRequest](docs/GroupNoNullEnumRequest.md)
 - [OpenapiClient::GroupResponse](docs/GroupResponse.md)
 - [OpenapiClient::IdAndMessageResponse](docs/IdAndMessageResponse.md)
 - [OpenapiClient::IdentityResponse](docs/IdentityResponse.md)
 - [OpenapiClient::InlineResponse400](docs/InlineResponse400.md)
 - [OpenapiClient::InlineResponse401](docs/InlineResponse401.md)
 - [OpenapiClient::InlineResponse409](docs/InlineResponse409.md)
 - [OpenapiClient::IntrospectResponse](docs/IntrospectResponse.md)
 - [OpenapiClient::LocationNoNonNullRequest](docs/LocationNoNonNullRequest.md)
 - [OpenapiClient::LocationResponse](docs/LocationResponse.md)
 - [OpenapiClient::MessageResponse](docs/MessageResponse.md)
 - [OpenapiClient::ModeRequest](docs/ModeRequest.md)
 - [OpenapiClient::ModeResponse](docs/ModeResponse.md)
 - [OpenapiClient::PayrunResponse](docs/PayrunResponse.md)
 - [OpenapiClient::PayslipResponse](docs/PayslipResponse.md)
 - [OpenapiClient::PayslipResponseContributions](docs/PayslipResponseContributions.md)
 - [OpenapiClient::PayslipResponseDeductions](docs/PayslipResponseDeductions.md)
 - [OpenapiClient::PayslipResponseEarnings](docs/PayslipResponseEarnings.md)
 - [OpenapiClient::PayslipResponseTaxes](docs/PayslipResponseTaxes.md)
 - [OpenapiClient::ProviderRequest](docs/ProviderRequest.md)
 - [OpenapiClient::ProviderResponse](docs/ProviderResponse.md)
 - [OpenapiClient::ScopesRequest](docs/ScopesRequest.md)
 - [OpenapiClient::ScopesResponse](docs/ScopesResponse.md)
 - [OpenapiClient::TimeOffBalanceResponse](docs/TimeOffBalanceResponse.md)
 - [OpenapiClient::TimeOffEntryResponse](docs/TimeOffEntryResponse.md)
 - [OpenapiClient::TimesheetResponse](docs/TimesheetResponse.md)
 - [OpenapiClient::TokenRequest](docs/TokenRequest.md)
 - [OpenapiClient::TokenResponse](docs/TokenResponse.md)


## Documentation for Authorization


### access-token


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

### basic


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

