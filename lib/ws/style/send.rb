require 'rubocop-rspec'
   module Ws
     module Style
      # Checks for the use of the send method.
      #
      # @example
      #   # bad
      #   Foo.send(anything)
      #   Foo.__send__(anything)
      #
      class Send < RuboCop::Cop::Style::Base
        MSG = 'Prefer `Object#__send__` or `Object#public_send` to `send`.'
        RESTRICT_ON_SEND = %i[send __send__].freeze

        def on_send(node)
          return unless node.arguments?

          add_offense(node.loc.selector)
        end
        alias on_csend on_send
     end
   end
end

::RuboCop::Cop::RSpec::FilePath.prepend Ws::Style::Send
