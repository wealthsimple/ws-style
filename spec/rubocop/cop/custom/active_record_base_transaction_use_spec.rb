require './lib/rubocop/cop/custom/active_record_base_transaction_use'

RSpec.describe RuboCop::Cop::Custom::ActiveRecordBaseTransactionUse do
  subject(:cop) { described_class.new }

  let(:msg) do
    "Avoid using `ActiveRecord::Base.transaction`; \
use `MyModelClass.transaction` or `#with_lock` \
with an instance of the model instead."
  end

  it 'registers an offense for usage of ActiveRecord::Base.transaction' do
    expect_offense(<<~RUBY)
      class MyModel < ApplicationRecord
        def do_something
          ActiveRecord::Base.transaction do
          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ #{msg}
            nil
          end
        end
      end
    RUBY
  end

  it 'registers no offense for usage of MyModelClass.transaction' do
    expect_no_offenses(<<~RUBY)
      class MyModelClass < ApplicationRecord
        def do_something
          MyModelClass.transaction do
            nil
          end
        end
      end
    RUBY
  end
end
