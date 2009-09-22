require 'test_helper'

class LikingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Liking.new.valid?
  end
end
