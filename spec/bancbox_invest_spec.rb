require 'helper'

describe 'Bancbox' do

  let (:bancbox_api_key)    { 'YOUR_CONSUMER_KEY' }
  let (:bancbox_api_secret) { 'YOUR_CONSUMER_SECRET' }
  let (:bancbox_api_url)    { 'https://sandbox-api.bancboxcrowd.com' }
  let (:credentials)        { { api_key: bancbox_api_key, secret: bancbox_api_secret }}

  it "should initialize main object" do
    client = bancbox_client(bancbox_api_key, bancbox_api_secret, bancbox_api_url)

    options = {
      first_name:     'JOHN',
      last_name:      'SMITH',
      email:          'someEmailAddress@someEmail.com',
      phone:          '1234567890',
      dob:            '1975-02-28',
      ssn:            '112-22-3333',
      address_1:      '222333 PEACHTREE',
      city:           'ATLANTA',
      state:          'GA',
      zip:            '30318',
      international:  '0',
      company_name:   'My Company',
      company_tax_id: 'someTaxId',
      created_by:     'Mar'
    }

    stub_post_create_investor.with({ query: credentials.merge(options) }).to_return(with_fixture('create_investor.json'))

    expect(client.create_investor(options)['request_id']).to eq(717911106576)
  end

end
