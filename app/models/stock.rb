class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: 'Tpk_38459c5eabaa451597cf7ccdcec64097',
                              endpoint: 'https://sandbox.iexapis.com/v1' )
    client.price(ticker_symbol)
  end
end
