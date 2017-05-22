module Minfraud
  module Components
    class Order < Base
      # @attribute amount
      # @return [Decimal] The total order amount for the transaction
      accessor :amount

      # @attribute currency
      # @return [String] The ISO 4217 currency code for the currency used in the transaction
      accessor :currency

      # @attribute discount_code
      # @return [String] The discount code applied to the transaction. If multiple discount codes are used,
      # please separate them with a comma.
      accessor :discount_code

      # @attribute affiliate_id
      # @return [String] The ID of the affiliate where the order is coming from
      accessor :affiliate_id

      # @attribute subaffiliate_id
      # @return [String] The ID of the sub-affiliate where the order is coming from
      accessor :subaffiliate_id

      # @attribute :referrer_uri
      # @return [String] The URI of the referring site for this order
      accessor :referrer_uri

      # @attribute :is_gift
      # @return [Boolean] Whether order was marked as a gift by the purchaser
      accessor :is_gift

      # @attribute :has_gift_message
      # @return [Boolean] Whether the purchaser included a gift message
      accessor :has_gift_message
    end
  end
end
