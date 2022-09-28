module RuboCop
  module Cop
    module Custom
      # Flags uses of ActiveRecord::Base.transaction,
      # as subclasses of ActiveRecord::Base may use a different
      # database connection.
      #
      # @example
      #
      #   # bad
      #   ActiveRecord::Base.transaction do
      #     ... logic + database operations
      #   end
      #
      #   # good
      #   MyModelClass.transaction do
      #     ... logic + database operations on instances of MyModelClass
      #   end
      #
      #   # also good
      #   my_model_instance.with_lock do
      #     ... logic + database operations on my_model_instance
      #   end
      #
      class ActiveRecordBaseTransactionUse < Base
        MSG = "Avoid using `ActiveRecord::Base.transaction`; \
use `MyModelClass.transaction` or `#with_lock` \
with an instance of the model instead.".freeze

        # @!method uses_active_record_base?(node)
        def_node_matcher :uses_active_record_base?, <<-PATTERN
          (const (const {nil? cbase} :ActiveRecord) :Base)
        PATTERN

        def on_send(node)
          receiver_node, method_name = *node

          return unless uses_active_record_base?(receiver_node) && method_name == :transaction

          add_offense(node)
        end
      end
    end
  end
end
