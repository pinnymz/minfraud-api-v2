module Minfraud
  module Components
    class ShoppingCartItem < Base
      # @attribute category
      # @return [String] The category of the item
      accessor :category

      # @attribute item_id
      # @return [String] The internal ID of the item
      accessor :item_id

      # @attribute quantity
      # @return [Integer] The quantity of the item in the shopping cart
      accessor :quantity

      # @attribute price
      # @return [Float] The per-unit price of this item in the shopping cart. This should use the same currency as the order currency
      accessor :price
    end
  end
end
