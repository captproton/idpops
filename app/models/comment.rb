class Comment < ActiveRecord::Base

  belongs_to :idea
  belongs_to :believer, :class_name => "User", :foreign_key => "believer_id"
  
  attr_accessible :believer_id, :idea_id, :words
end
