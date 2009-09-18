class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_uniqueness_of :username, :on => :create, :message => "must be unique"
  
  
  attr_accessible :username, :email, :password, :password_confirmation


end
