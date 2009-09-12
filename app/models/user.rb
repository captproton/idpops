class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_presence_of :invitation_id, :on => :create, :message => "is required"

  validates_uniqueness_of :username, :on => :create, :message => "must be unique"
  has_many :sent_invitations, :class_name => "Invitation", :foreign_key => "sender_id"
  belongs_to :invitation
  
  before_create :set_invitation_limit
  
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
