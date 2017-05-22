module Minfraud
  module Accessible
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def declarations
        @declarations ||= []
      end

      def accessor(attribute_name)
        declarations << attribute_name
      end
    end
  end
end
