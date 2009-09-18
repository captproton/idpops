class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_uniqueness_of :username, :on => :create, :message => "must be unique"
  
  
  attr_accessible :username, :email, :password, :password_confirmation, :invitation_token

  def invitation_token
    invitation.token if invitation
  end
  
  def invitation_token=(token)
    self.invitation = Invitation.find_by_token(token)
  end
  
  private
  
  def set_invitation_limit
    self.invitation_limit = 25
  end

end
