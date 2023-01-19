module Ws
  class StrictDryStruct < RuboCop::Cop::Base
    MSG = 'Avoid using `Dry::Struct` without schema schema.strict'.freeze

    def_node_matcher :uses_open_struct?, <<-PATTERN
      (const (const {nil? (cbase)} :Dry) :Struct)
    PATTERN

    def_node_search :uses_strict_mode?, <<-PATTERN
      (send nil? :schema (send (send nil? :schema) :strict))
    PATTERN

    def on_const(node)
      return unless uses_open_struct?(node)
      return if uses_strict_mode?(node.parent)

      add_offense(node)
    end
  end
end
