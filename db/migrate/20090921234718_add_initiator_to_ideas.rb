class AddInitiatorToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :initiator_id, :integer
  end

  def self.down
    remove_column :ideas, :initiator_id
  end
end
