require 'json'
require 'minfraud/support/initializable'

module Minfraud
  module Components
    class Base
      extend  Forwardable
      include Support::Initializable

      def_delegators :present_instance_values, :to_json

      private

      def present_instance_values
        instance_values.reject { |_, v| v.nil? }
      end

      def instance_values
        Hash[instance_variables.map { |name| [name.to_s[1..-1], instance_variable_get(name)] }]
      end
    end
  end
end
