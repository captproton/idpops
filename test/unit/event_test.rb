require 'test_helper'

class EventTest < ActiveSupport::TestCase
    def setup
      # normal Test::Unit setup stuff here
      @event = Event.new
      
    end

    def test_should_be_true
      assert true
    end

    should "be true" do
      assert true
    end  
end
