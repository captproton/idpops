class Event < ActiveRecord::Base
  belongs_to :host, :class_name => "User", :foreign_key => "host_id"
  has_many :sent_invitations, :class_name => "Invitation", :foreign_key => "sender_id"

  
end
