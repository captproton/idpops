class Liking < ActiveRecord::Base
  belongs_to :believer, :class_name => "User", :foreign_key => "believer_id"
  belongs_to :idea
  attr_accessible :believer_id, :idea_id, :rating
end
