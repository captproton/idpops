require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup ## dose work?
    @user = Factory(:user)
  end
  
  ##should_validate_uniqueness_of :username
  
end
