class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :host_id
      t.string :location_name
      t.string :title
      t.integer :comment_id
      t.text :description
      t.datetime :start_date_of_service
      t.datetime :finish_date_of_service
      t.string :location_address
      t.boolean :open_invite
      t.integer :volunteer_cap
      t.boolean :allow_maybe_come
      t.boolean :display_attending
      t.boolean :cancelled
      t.boolean :show_comments
      t.boolean :show_avatars
      t.boolean :allow_adding_of_pictures
      t.boolean :allow_adding_of_video

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
