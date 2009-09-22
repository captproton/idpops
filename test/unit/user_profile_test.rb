require 'test_helper'

class UserProfileTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UserProfile.new.valid?
  end
end
