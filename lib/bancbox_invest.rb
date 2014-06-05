require 'httparty'

class Bancbox
  
  attr_accessor :bancbox_api_key, :bancbox_api_secret, :bancbox_api_url

  def initialize(options = {})
    options.each do |key, value|
      send(:"#{key}=", value)
    end
    yield(self) if block_given?
    @options = credentials
  end
  
  def credentials
    {
      api_key: bancbox_api_key,
      secret:  bancbox_api_secret,
    }
  end

  def post(url, options)
    HTTParty.post(bancbox_api_url+url, query: options)
  end

  # https://invest.bancbox.com/apis_create_investor.html
  def create_investor(options={})
    @options.merge!(options)
    post('/crowd/v0/cfp/createInvestor', @options)
  end

  # https://invest.bancbox.com/apis_create_investor.html
  def create_investor(options={})
    @options.merge!(options)
    post('/crowd/v0/cfp/createInvestor', @options)
  end

  # https://invest.bancbox.com/apis_create_issuer.html
  def create_issuer(options={})
    @options.merge!(options)
    post('/crowd/v0/cfp/createIssuer', @options)
  end

  # https://invest.bancbox.com/apis_fund_escrow.html
  def fund_escrow(options={})
    @options.merge!(options)
    post('/crowd/v0/cfp/fundEscrow', @options)
  end

  # https://invest.bancbox.com/apis_get_investor.html
  def get_investor(options={})
    @options.merge!(options)
    post('/crowd/v0/cfp/getInvestorDetails', @options)
  end

  # https://invest.bancbox.com/apis_open_escrow.html
  def open_escrow(options={})
    @options.merge!(options)
    post('/crowd/v0/cfp/createEscrowAccount', @options)
  end

end