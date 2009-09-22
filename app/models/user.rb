class User < ActiveRecord::Base
  acts_as_authentic
  has_one :profile
  has_many :imaginings, :class_name => "Idea", :foreign_key => "imaginer_id"
  has_many :likings
  has_many :ideas, :through => :likings do 
    def rated_at_or_above(rating) 
      find :all, :conditions => ['rating >= ?', rating] 
    end 
  end 

  
  validates_uniqueness_of :username, :on => :create, :message => "must be unique"
  
  
  attr_accessible :username, :email, :password, :password_confirmation


end
