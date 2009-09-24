class AddToIdeasBlurb < ActiveRecord::Migration
  def self.up
    add_column :ideas, :blurb, :text
    add_column :ideas, :deadline, :datetime
  end

  def self.down
    remove_column :ideas, :deadline
    remove_column :ideas, :blurb
  end
end
