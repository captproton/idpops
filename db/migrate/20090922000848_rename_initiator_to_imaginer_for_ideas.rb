class RenameInitiatorToImaginerForIdeas < ActiveRecord::Migration
  def self.up
    rename_column :ideas, :initiator_id, :imaginer_id
  end

  def self.down
    rename_column :ideas, :imaginer_id, :initiator_id
  end
end
