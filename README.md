## Exaple
    require 'bancbox_invest'

    Bancbox = BancboxInvest.new do |config|
      config.bancbox_api_key    = 'API_KEY'
      config.bancbox_api_secret = 'API_SECRET'
      config.bancbox_api_url    = 'API_URL'
    end

    options = { first_name: 'Michael', last_name: 'Jordan', ...}

    Bancbox.create_investor(options)

## API Methods
* create_investor [https://invest.bancbox.com/apis_create_investor.html](https://invest.bancbox.com/apis_create_investor.html)
* submit_agreement [https://invest.bancbox.com/apis_submit_agreement.html](https://invest.bancbox.com/apis_submit_agreement.html)
* verify_identity [https://invest.bancbox.com/apis_verify_identity.html](https://invest.bancbox.com/apis_verify_identity.html)
* create_issuer [https://invest.bancbox.com/apis_create_issuer.html](https://invest.bancbox.com/apis_create_issuer.html)
* open_escrow [https://invest.bancbox.com/apis_open_escrow.html](https://invest.bancbox.com/apis_open_escrow.html)
* fund_account [https://invest.bancbox.com/apis_fund_account.html](https://invest.bancbox.com/apis_fund_account.html)
* fund_escrow [https://invest.bancbox.com/apis_fund_escrow.html](https://invest.bancbox.com/apis_fund_escrow.html)
* cge_investor_contribution [https://invest.bancbox.com/apis_change_investor_contribution.html](https://invest.bancbox.com/apis_change_investor_contribution.html)
* cancel_escrow [https://invest.bancbox.com/apis_cancel_escrow.html](https://invest.bancbox.com/apis_cancel_escrow.html)
* close_escrow [https://invest.bancbox.com/apis_close_escrow.html](https://invest.bancbox.com/apis_close_escrow.html)
* get_escrow_details [https://invest.bancbox.com/apis_get_escrow.html](https://invest.bancbox.com/apis_get_escrow.html)
* get_escrow_list [https://invest.bancbox.com/apis_list_escrow.html](https://invest.bancbox.com/apis_list_escrow.html)
* get_activity_details [https://invest.bancbox.com/apis_get_escrow_activity.html](https://invest.bancbox.com/apis_get_escrow_activity.html)
* get_investor_list [https://invest.bancbox.com/apis_list_investor.html](https://invest.bancbox.com/apis_list_investor.html)
* get_investor [https://invest.bancbox.com/apis_get_investor.html](https://invest.bancbox.com/apis_get_investor.html)
* get_issuer_list [https://invest.bancbox.com/apis_list_issuer.html](https://invest.bancbox.com/apis_list_issuer.html)
* get_issuer_details [https://invest.bancbox.com/apis_get_issuer.html](https://invest.bancbox.com/apis_get_issuer.html)
* disburse_escrow  [https://invest.bancbox.com/apis_disburse_escrow.html](https://invest.bancbox.com/apis_disburse_escrow.html)
* disburse_escrow [https://invest.bancbox.com/apis_disburse_escrow.html](https://invest.bancbox.com/apis_disburse_escrow.html)
* get_investment_ledger [https://invest.bancbox.com/apis_get_investment_ledger.html](https://invest.bancbox.com/apis_get_investment_ledger.html)
* update_investment_ledger [https://invest.bancbox.com/apis_update_investment_ledger.html](https://invest.bancbox.com/apis_update_investment_ledger.html)
* freeze_investment_ledger [https://invest.bancbox.com/apis_freeze_investment_ledger.html](https://invest.bancbox.com/apis_freeze_investment_ledger.html)
* create_proceeds_schedules [https://invest.bancbox.com/apis_create_proceeds_schedule.html](https://invest.bancbox.com/apis_create_proceeds_schedule.html)
* get_proceeds_schedules [https://invest.bancbox.com/apis_view_proceeds_schedule.html](https://invest.bancbox.com/apis_view_proceeds_schedule.html)
* cancel_proceeds_schedules [https://invest.bancbox.com/apis_cancel_proceeds_schedule.html](https://invest.bancbox.com/apis_cancel_proceeds_schedule.html)
* withdraw_funds [https://invest.bancbox.com/apis_withdraw_funds.html](https://invest.bancbox.com/apis_withdraw_funds.html)
* update_escrow_account [https://invest.bancbox.com/apis_modify_escrow.html](https://invest.bancbox.com/apis_modify_escrow.html)
* transfer_funds [https://invest.bancbox.com/apis_transfer_funds.html](https://invest.bancbox.com/apis_transfer_funds.html)
* link_external_account [https://invest.bancbox.com/apis_link_external_account.html](https://invest.bancbox.com/apis_link_external_account.html)
* confirm_wire_transfer [https://invest.bancbox.com/apis_confirm_wire_transfer.html](https://invest.bancbox.com/apis_confirm_wire_transfer.html)
* verify_income [https://invest.bancbox.com/apis_verify_income.html](https://invest.bancbox.com/apis_verify_income.html)
* accredit_investor_3rd_party [https://invest.bancbox.com/apis_accredit_investor_third_party.html](https://invest.bancbox.com/apis_accredit_investor_third_party.html)
* get_verification_status [https://invest.bancbox.com/apis_get_verification_status.html](https://invest.bancbox.com/apis_get_verification_status.html)
* get_activity [https://invest.bancbox.com/apis_get_activity.html](https://invest.bancbox.com/apis_get_activity.html)
* get_ledger [https://invest.bancbox.com/apis_get_ledger.html](https://invest.bancbox.com/apis_get_ledger.html)
* create_challenge_deposit [https://invest.bancbox.com/apis_create_challenge_deposit.html](https://invest.bancbox.com/apis_create_challenge_deposit.html)
* verify_challenge_deposit [https://invest.bancbox.com/apis_verify_challenge_deposit.html](https://invest.bancbox.com/apis_verify_challenge_deposit.html)
* get_challenge_deposit_status [https://invest.bancbox.com/apis_get_challenge_deposit_status.html](https://invest.bancbox.com/apis_get_challenge_deposit_status.html)
* update_investor [https://invest.bancbox.com/apis_update_investor.html](https://invest.bancbox.com/apis_update_investor.html)
* update_issuer [https://invest.bancbox.com/apis_update_issuer.html](https://invest.bancbox.com/apis_update_issuer.html)
