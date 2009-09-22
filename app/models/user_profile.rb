class UserProfile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :url, :about, :twitter_handle
end
