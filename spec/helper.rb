require 'bancbox_invest'
require 'rspec'
require 'webmock/rspec'

WebMock.disable_net_connect!

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def fixture_path
  File.expand_path('../fixtures', __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end

def with_fixture(file)
  { body: fixture(file), headers: { content_type: 'application/json; charset=utf-8' } }
end

def bancbox_client(key, secret, url)
  BancboxInvest.new do |config|
    config.bancbox_api_key    = key
    config.bancbox_api_secret = secret
    config.bancbox_api_url    = url
  end
end

def stub_post(path)
  stub_request(:post, 'https://sandbox-api.bancboxcrowd.com' + path)
end

def stub_post_create_investor
  stub_post('/crowd/v0/cfp/createInvestor')
end
