module Minfraud
  module Components
    class Email < Base
      # @attribute address
      # @return [String] This field must be either a valid email address or an MD5 of the email used in the transaction
      accessor :address

      # @attribute domain
      # @return [String] The domain of the email address used in the transaction
      accessor :domain
    end
  end
end
