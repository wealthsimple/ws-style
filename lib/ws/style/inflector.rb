require 'rubocop-rspec'

module Ws
  module Style
    module Inflector
      def camel_to_snake_case(string)
        if defined?(ActiveSupport::Inflector)
          ActiveSupport::Inflector.underscore(string)
        else
          super
        end
      end
    end
  end
end

::RuboCop::Cop::RSpec::SpecFilePathFormat.prepend Ws::Style::Inflector
