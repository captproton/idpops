require 'test_helper'

class InvitationTest < ActiveSupport::TestCase
  def setup
    # normal Test::Unit setup stuff here, brother
    @invitation = Invitation.new
    
  end

  def test_should_be_true
    assert true
  end

  should "be true" do
    assert true
  end  
end
