class CreateLikings < ActiveRecord::Migration
  def self.up
    create_table :likings do |t|
      t.integer :believer_id
      t.integer :idea_id
      t.integer :rating
      t.timestamps
    end
  end
  
  def self.down
    drop_table :likings
  end
end
