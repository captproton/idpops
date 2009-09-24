class DropUserProfiles < ActiveRecord::Migration
  def self.up
    drop_table :user_profiles
  end

  def self.down
    create_table "user_profiles", :force => true do |t|
      t.text     "url"
      t.text     "about"
      t.string   "twitter_handle"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "user_id"
    end
    
  end
end
