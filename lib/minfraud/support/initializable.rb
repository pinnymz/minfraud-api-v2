module Minfraud
  module Support
    module Initializable
      def self.included(base)
        base.extend ClassMethods
      end

      def initialize(params = {})
        self.class.accessors.each do |attribute|
          self.class.send :attr_accessor,   attribute
          self.send       :"#{attribute}=", params[attribute]
        end
      end

      private

      module ClassMethods
        def accessors
          @accessors ||= []
        end

        def accessor(attribute)
          accessors << attribute
        end
      end
    end
  end
end
