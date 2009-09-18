class Transaction < ActiveRecord::Base
  belongs_to :backer, :class_name => "User", :foreign_key => "backer_id"
  belongs_to :idea
end
