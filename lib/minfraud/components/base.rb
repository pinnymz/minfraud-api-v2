require 'json'
require 'minfraud/accessible'

module Minfraud
  module Components
    class Base
      # @note This class is used as a parent class for all other components
      # @note It defines a method which is used for basic JSON representation of PORO objects
      include Accessible
      extend  Forwardable

      def_delegators :instance_values, :to_json

      def initialize(params = {})
        self.class.declarations.each { |attr_name| instance_variable_set("@#{attr_name}", params[attr_name]) }
      end

      private

      def instance_values
        Hash[instance_variables.map { |name| [name.to_s[1..-1], instance_variable_get(name)] }]
          .reject { |_, v| v.nil? }
      end
    end
  end
end
