class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :believer_id
      t.integer :idea_id
      t.text :words
      t.timestamps
    end
  end
  
  def self.down
    drop_table :comments
  end
end
