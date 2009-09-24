class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.text :url
      t.text :about
      t.string :twitter_handle
      t.string :user_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :profiles
  end
end
