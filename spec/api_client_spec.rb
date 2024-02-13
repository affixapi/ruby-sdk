=begin
#Affix API

#The affixapi.com API documentation.  # Introduction Affix API is an OAuth 2.1 application that allows developers to access customer data, without developers needing to manage or maintain integrations; or collect login credentials or API keys from users for these third party systems.  # OAuth 2.1 Affix API follows the [OAuth 2.1 spec](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-v2-1-08).  As an OAuth application, Affix API handles not only both the collection of sensitive user credentials or API keys, but also builds and maintains the integrations with the providers, so you don't have to.  # How to obtain an access token in order to get started, you must:   - register a `client_id`   - direct your user to the sign in flow  (`https://connect.affixapi.com`     [with the appropriate query     parameters](https://github.com/affixapi/starter-kit/tree/master/connect))   - capture `authorization_code` we will send to your redirect URI after     the sign in flow is complete and exchange that `authorization_code` for     a Bearer token  # Sandbox keys (developer mode) ### dev ``` eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6ImQ1OTZhMmYzLWYzNzktNGE1ZC1hMmRhLTk4OWJmYWViYTg1ZCIsImlhdCI6MTcwMjkyMDkwMywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5kZXYuZW5naW5lZXJpbmcuYWZmaXhhcGkuY29tIiwic3ViIjoiZGV2ZWxvcGVyIiwiYXVkIjoiM0ZEQUVERjktMURDQTRGNTQtODc5NDlGNkEtNDEwMjc2NDMifQ.VLWYjCQvBS0C3ZA6_J3-U-idZj5EYI2IlDdTjAWBxSIHGufp6cqaVodKsF2BeIqcIeB3P0lW-KL9mY3xGd7ckQ ```  #### `employees` endpoint sample: ``` curl --fail \\   -X GET \\   -H 'Authorization: Bearer eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6ImQ1OTZhMmYzLWYzNzktNGE1ZC1hMmRhLTk4OWJmYWViYTg1ZCIsImlhdCI6MTcwMjkyMDkwMywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5kZXYuZW5naW5lZXJpbmcuYWZmaXhhcGkuY29tIiwic3ViIjoiZGV2ZWxvcGVyIiwiYXVkIjoiM0ZEQUVERjktMURDQTRGNTQtODc5NDlGNkEtNDEwMjc2NDMifQ.VLWYjCQvBS0C3ZA6_J3-U-idZj5EYI2IlDdTjAWBxSIHGufp6cqaVodKsF2BeIqcIeB3P0lW-KL9mY3xGd7ckQ' \\   'https://dev.api.affixapi.com/2023-03-01/developer/employees' ```  ### prod ``` eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6IjI5YjFjYTg4LWNlNjktNDgyZC1iNGZjLTkzMWMzZmJkYWM4ZSIsImlhdCI6MTcwMjkyMTA4MywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5wcm9kLmVuZ2luZWVyaW5nLmFmZml4YXBpLmNvbSIsInN1YiI6ImRldmVsb3BlciIsImF1ZCI6IjA4QkIwODFFLUQ5QUI0RDE0LThERjk5MjMzLTY2NjE1Q0U5In0.2zdpFAmiyYiYk6MOcbXNUwwR4M1Fextnaac340x54AidiWXCyw-u9KeavbqfYF6q8a9kcDLrxhJ8Wc_3tIzuVw ```  #### `employees` endpoint sample: ``` curl --fail \\   -X GET \\   -H 'Authorization: Bearer eyJhbGciOiJFUzI1NiIsImtpZCI6Ims5RmxwSFR1YklmZWNsUU5QRVZzeFcxazFZZ0Zfbk1BWllOSGVuOFQxdGciLCJ0eXAiOiJKV1MifQ.eyJwcm92aWRlciI6InNhbmRib3giLCJzY29wZXMiOlsiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2NvbXBhbnkiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWUiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvZW1wbG95ZWVzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL2lkZW50aXR5IiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3BheXJ1bnMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvcGF5cnVucy86cGF5cnVuX2lkIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWJhbGFuY2VzIiwiLzIwMjMtMDMtMDEvZGV2ZWxvcGVyL3RpbWUtb2ZmLWVudHJpZXMiLCIvMjAyMy0wMy0wMS9kZXZlbG9wZXIvdGltZXNoZWV0cyJdLCJ0b2tlbiI6IjI5YjFjYTg4LWNlNjktNDgyZC1iNGZjLTkzMWMzZmJkYWM4ZSIsImlhdCI6MTcwMjkyMTA4MywiaXNzIjoicHVibGljYXBpLWludGVybWVkaWF0ZS5wcm9kLmVuZ2luZWVyaW5nLmFmZml4YXBpLmNvbSIsInN1YiI6ImRldmVsb3BlciIsImF1ZCI6IjA4QkIwODFFLUQ5QUI0RDE0LThERjk5MjMzLTY2NjE1Q0U5In0.2zdpFAmiyYiYk6MOcbXNUwwR4M1Fextnaac340x54AidiWXCyw-u9KeavbqfYF6q8a9kcDLrxhJ8Wc_3tIzuVw' \\   'https://api.affixapi.com/2023-03-01/developer/employees' ```  # Webhooks An exciting feature for HR/Payroll modes are webhooks.  If enabled, your `webhook_uri` is set on your `client_id` for the respective environment: `dev | prod`  Webhooks are configured to make live requests to the underlying integration 1x/hr, and if a difference is detected since the last request, we will send a request to your `webhook_uri` with this shape:  ``` {    added: <api.v20230301.Employees>[     <api.v20230301.Employee>{       ...,       date_of_birth: '2010-08-06',       display_full_name: 'Daija Rogahn',       employee_number: '57993',       employment_status: 'pending',       employment_type: 'other',       employments: [         {           currency: 'eur',           effective_date: '2022-02-25',           employment_type: 'other',           job_title: 'Dynamic Implementation Manager',           pay_frequency: 'semimonthly',           pay_period: 'YEAR',           pay_rate: 96000,         },       ],       first_name: 'Daija',       ...     }   ],   removed: [],   updated: [     <api.v20230301.Employee>{       ...,       date_of_birth: '2009-11-09',       display_full_name: 'Lourdes Stiedemann',       employee_number: '63189',       employment_status: 'leave',       employment_type: 'full_time',       employments: [         {           currency: 'gbp',           effective_date: '2023-01-16',           employment_type: 'full_time',           job_title: 'Forward Brand Planner',           pay_frequency: 'semimonthly',           pay_period: 'YEAR',           pay_rate: 86000,         },       ],       first_name: 'Lourdes',     }   ] } ```  the following headers will be sent with webhook requests:  ``` x-affix-api-signature: ab8474e609db95d5df3adc39ea3add7a7544bd215c5c520a30a650ae93a2fba7  x-affix-api-origin:  webhooks-employees-webhook  user-agent:  affixapi.com ```  Before trusting the payload, you should sign the payload and verify the signature matches the signature sent by the `affixapi.com` service.  This secures that the data sent to your `webhook_uri` is from the `affixapi.com` server.  The signature is created by combining the signing secret (your `client_secret`) with the body of the request sent using a standard HMAC-SHA256 keyed hash.  The signature can be created via:   - create an `HMAC` with your `client_secret`   - update the `HMAC` with the payload   - get the hex digest -> this is the signature  Sample `typescript` code that follows this recipe:  ``` import { createHmac } from 'crypto';  export const computeSignature = ({   str,   signingSecret, }: {   signingSecret: string;   str: string; }): string => {   const hmac = createHmac('sha256', signingSecret);   hmac.update(str);   const signature = hmac.digest('hex');    return signature; }; ```  ## Rate limits Open endpoints (not gated by an API key) (applied at endpoint level):   - 15 requests every 1 minute (by IP address)   - 25 requests every 5 minutes (by IP address)  Gated endpoints (require an API key) (applied at endpoint level):   - 40 requests every 1 minute (by IP address)   - 40 requests every 5 minutes (by `client_id`)  Things to keep in mind:   - Open endpoints (not gated by an API key) will likely be called by your     users, not you, so rate limits generally would not apply to you.   - As a developer, rate limits are applied at the endpoint granularity.     - For example, say the rate limits below are 10 requests per minute by ip.       from that same ip, within 1 minute, you get:       - 10 requests per minute on `/orders`,       - another 10 requests per minute on `/items`,       - and another 10 requests per minute on `/identity`,       - for a total of 30 requests per minute. 

The version of the OpenAPI document: 2023-03-01
Contact: developers@affixapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'spec_helper'

describe OpenapiClient::ApiClient do
  context 'initialization' do
    context 'URL stuff' do
      context 'host' do
        it 'removes http from host' do
          OpenapiClient.configure { |c| c.host = 'http://example.com' }
          expect(OpenapiClient::Configuration.default.host).to eq('example.com')
        end

        it 'removes https from host' do
          OpenapiClient.configure { |c| c.host = 'https://wookiee.com' }
          expect(OpenapiClient::ApiClient.default.config.host).to eq('wookiee.com')
        end

        it 'removes trailing path from host' do
          OpenapiClient.configure { |c| c.host = 'hobo.com/v4' }
          expect(OpenapiClient::Configuration.default.host).to eq('hobo.com')
        end
      end

      context 'base_path' do
        it "prepends a slash to base_path" do
          OpenapiClient.configure { |c| c.base_path = 'v4/dog' }
          expect(OpenapiClient::Configuration.default.base_path).to eq('/v4/dog')
        end

        it "doesn't prepend a slash if one is already there" do
          OpenapiClient.configure { |c| c.base_path = '/v4/dog' }
          expect(OpenapiClient::Configuration.default.base_path).to eq('/v4/dog')
        end

        it "ends up as a blank string if nil" do
          OpenapiClient.configure { |c| c.base_path = nil }
          expect(OpenapiClient::Configuration.default.base_path).to eq('')
        end
      end
    end
  end

  describe 'params_encoding in #build_request' do
    let(:config) { OpenapiClient::Configuration.new }
    let(:api_client) { OpenapiClient::ApiClient.new(config) }

    it 'defaults to nil' do
      expect(OpenapiClient::Configuration.default.params_encoding).to eq(nil)
      expect(config.params_encoding).to eq(nil)

      request = api_client.build_request(:get, '/test')
      expect(request.options[:params_encoding]).to eq(nil)
    end

    it 'can be customized' do
      config.params_encoding = :multi
      request = api_client.build_request(:get, '/test')
      expect(request.options[:params_encoding]).to eq(:multi)
    end
  end

  describe 'timeout in #build_request' do
    let(:config) { OpenapiClient::Configuration.new }
    let(:api_client) { OpenapiClient::ApiClient.new(config) }

    it 'defaults to 0' do
      expect(OpenapiClient::Configuration.default.timeout).to eq(0)
      expect(config.timeout).to eq(0)

      request = api_client.build_request(:get, '/test')
      expect(request.options[:timeout]).to eq(0)
    end

    it 'can be customized' do
      config.timeout = 100
      request = api_client.build_request(:get, '/test')
      expect(request.options[:timeout]).to eq(100)
    end
  end

  describe '#deserialize' do
    it "handles Array<Integer>" do
      api_client = OpenapiClient::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[12, 34]')
      data = api_client.deserialize(response, 'Array<Integer>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([12, 34])
    end

    it 'handles Array<Array<Integer>>' do
      api_client = OpenapiClient::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[[12, 34], [56]]')
      data = api_client.deserialize(response, 'Array<Array<Integer>>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([[12, 34], [56]])
    end

    it 'handles Hash<String, String>' do
      api_client = OpenapiClient::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '{"message": "Hello"}')
      data = api_client.deserialize(response, 'Hash<String, String>')
      expect(data).to be_instance_of(Hash)
      expect(data).to eq(:message => 'Hello')
    end
  end

  describe "#object_to_hash" do
    it 'ignores nils and includes empty arrays' do
      # uncomment below to test object_to_hash for model
      # api_client = OpenapiClient::ApiClient.new
      # _model = OpenapiClient::ModelName.new
      # update the model attribute below
      # _model.id = 1
      # update the expected value (hash) below
      # expected = {id: 1, name: '', tags: []}
      # expect(api_client.object_to_hash(_model)).to eq(expected)
    end
  end

  describe '#build_collection_param' do
    let(:param) { ['aa', 'bb', 'cc'] }
    let(:api_client) { OpenapiClient::ApiClient.new }

    it 'works for csv' do
      expect(api_client.build_collection_param(param, :csv)).to eq('aa,bb,cc')
    end

    it 'works for ssv' do
      expect(api_client.build_collection_param(param, :ssv)).to eq('aa bb cc')
    end

    it 'works for tsv' do
      expect(api_client.build_collection_param(param, :tsv)).to eq("aa\tbb\tcc")
    end

    it 'works for pipes' do
      expect(api_client.build_collection_param(param, :pipes)).to eq('aa|bb|cc')
    end

    it 'works for multi' do
      expect(api_client.build_collection_param(param, :multi)).to eq(['aa', 'bb', 'cc'])
    end

    it 'fails for invalid collection format' do
      expect { api_client.build_collection_param(param, :INVALID) }.to raise_error(RuntimeError, 'unknown collection format: :INVALID')
    end
  end

  describe '#json_mime?' do
    let(:api_client) { OpenapiClient::ApiClient.new }

    it 'works' do
      expect(api_client.json_mime?(nil)).to eq false
      expect(api_client.json_mime?('')).to eq false

      expect(api_client.json_mime?('application/json')).to eq true
      expect(api_client.json_mime?('application/json; charset=UTF8')).to eq true
      expect(api_client.json_mime?('APPLICATION/JSON')).to eq true

      expect(api_client.json_mime?('application/xml')).to eq false
      expect(api_client.json_mime?('text/plain')).to eq false
      expect(api_client.json_mime?('application/jsonp')).to eq false
    end
  end

  describe '#select_header_accept' do
    let(:api_client) { OpenapiClient::ApiClient.new }

    it 'works' do
      expect(api_client.select_header_accept(nil)).to be_nil
      expect(api_client.select_header_accept([])).to be_nil

      expect(api_client.select_header_accept(['application/json'])).to eq('application/json')
      expect(api_client.select_header_accept(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(api_client.select_header_accept(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')

      expect(api_client.select_header_accept(['application/xml'])).to eq('application/xml')
      expect(api_client.select_header_accept(['text/html', 'application/xml'])).to eq('text/html,application/xml')
    end
  end

  describe '#select_header_content_type' do
    let(:api_client) { OpenapiClient::ApiClient.new }

    it 'works' do
      expect(api_client.select_header_content_type(nil)).to eq('application/json')
      expect(api_client.select_header_content_type([])).to eq('application/json')

      expect(api_client.select_header_content_type(['application/json'])).to eq('application/json')
      expect(api_client.select_header_content_type(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(api_client.select_header_content_type(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')
      expect(api_client.select_header_content_type(['application/xml'])).to eq('application/xml')
      expect(api_client.select_header_content_type(['text/plain', 'application/xml'])).to eq('text/plain')
    end
  end

  describe '#sanitize_filename' do
    let(:api_client) { OpenapiClient::ApiClient.new }

    it 'works' do
      expect(api_client.sanitize_filename('sun')).to eq('sun')
      expect(api_client.sanitize_filename('sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('../sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('/var/tmp/sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('./sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('..\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('\var\tmp\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('c:\var\tmp\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('.\sun.gif')).to eq('sun.gif')
    end
  end
end
