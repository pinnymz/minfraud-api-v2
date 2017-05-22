require 'json'
require 'minfraud/accessible'

module Minfraud
  module Components
    class Base
      include Accessible
      extend  Forwardable

      def_delegators :compact_instance_values, :to_json

      def initialize(params = {})
        self.class.declarations.each { |attr_name| instance_variable_set("@#{attr_name}", params[attr_name]) }
      end

      private

      def compact_instance_values
        instance_values.reject { |_, v| v.nil? }
      end

      def instance_values
        Hash[instance_variables.map { |name| [name.to_s[1..-1], instance_variable_get(name)] }]
      end
    end
  end
end
