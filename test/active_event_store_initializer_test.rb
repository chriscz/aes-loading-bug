require 'test_helper'

class ActiveEventStoreInitializerTest < ActiveSupport::TestCase

  test "initializer has been called" do
    assert $aes_initializer_called, "Expected ActiveEventStore.on_load block to have been called"
  end
end
