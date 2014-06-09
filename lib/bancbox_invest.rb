require 'httparty'
require 'active_support/core_ext'

class Bancbox
  
  attr_accessor :bancbox_api_key, :bancbox_api_secret, :bancbox_api_url

  BANCBOX_METHODS = %w[create_investor submit_agreement verify_identity create_issuer open_escrow fund_account fund_escrow
    cge_investor_contr cancel_escrow close_escrow get_escrow_details get_escrow_list get_activity_details get_investor_list
    get_investor get_issuer_list get_issuer_details disburse_escrow disburse_escrow get_investment_ledger update_investment_ledger
    freeze_investment_ledger create_proceeds_schedules get_proceeds_schedules cancel_proceeds_schedules withdraw_funds
    update_escrow_account transfer_funds link_external_account confirm_wire_transfer verify_income accredit_investor_3rd_party
    get_verification_status get_activity get_ledger create_challenge_deposit verify_challenge_deposit get_challenge_deposit_status
    update_investor update_issuer]

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

  BANCBOX_METHODS.each do |action|
    define_method(action) do |argument|
      @options.merge!(argument)
      post("/crowd/v0/cfp/#{action.camelize(:lower)}", @options)
    end
  end

end
