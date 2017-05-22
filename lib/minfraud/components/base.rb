require 'json'

module Minfraud
  module Components
    class Base
      # @note This class is used as a parent class for all other components
      # @note It defines a method which is used for basic JSON representation of PORO objects
      extend Forwardable

      def_delegators :instance_values, :to_json

      private

      def instance_values
        Hash[instance_variables.map { |name| [name.to_s[1..-1], instance_variable_get(name)] }]
      end
    end
  end
end
