class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :sent_invitations, :class_name => "Invitation", :foreign_key => "sender_id"
  belongs_to :invitation
  
  before_create :set_invitation_limit
  
  private
  
  def set_invitation_limit
    self.invitation_limit = 25
  end
end
