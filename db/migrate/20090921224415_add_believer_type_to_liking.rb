class AddBelieverTypeToLiking < ActiveRecord::Migration
  def self.up
    add_column :likings, :beliver_type, :string
  end

  def self.down
    remove_column :likings, :beliver_type
  end
end
