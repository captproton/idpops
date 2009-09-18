class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :idea_id
      t.integer :backer_id
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
