class Idea < ActiveRecord::Base
  has_many :likings
  has_many :belivers, :through => :likings, :source => :user
  belongs_to :imaginer, :class_name => "User", :foreign_key => "imaginer_id"
end
