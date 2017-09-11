require 'minfraud/enum'

module Minfraud
  module Components
    class Event < Base
      include ::Minfraud::Enum
      # @attribute transaction_id
      # @return [String] Internal ID for the transaction. Used to locate a specific transaction in minFraud logs
      attr_accessor :transaction_id

      # @attribute shop_id
      # @return [String] Internal ID for the shop, affiliate, or merchant this order is coming from
      attr_accessor :shop_id

      # @attribute time
      # @return [String] The date and time the event occurred. The string must be in the RFC 3339 date-time format.
      # If this field is not in the request, the current time will be used
      attr_accessor :time

      # @attribute type
      # @return [String] The type of event being scored
      enum_accessor :type, %i[
        account_creation
        account_login
        purchase
        recurring_purchase
        referral
        survery
      ]

      # Creates Minfraud::Components::Event instance
      # @param  [Hash] params hash of parameters
      # @return [Minfraud::Components::Event] an Event instance
      def initialize(params = {})
        super
        self.type = params[:type]
      end
    end
  end
end
