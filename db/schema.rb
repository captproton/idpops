# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090922000848) do

  create_table "comments", :force => true do |t|
    t.integer  "believer_id"
    t.integer  "idea_id"
    t.text     "words"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.integer  "host_id"
    t.string   "location_name"
    t.string   "title"
    t.integer  "comment_id"
    t.text     "description"
    t.datetime "start_date_of_service"
    t.datetime "finish_date_of_service"
    t.string   "location_address"
    t.boolean  "open_invite"
    t.integer  "volunteer_cap"
    t.boolean  "allow_maybe_come"
    t.boolean  "display_attending"
    t.boolean  "cancelled"
    t.boolean  "show_comments"
    t.boolean  "show_avatars"
    t.boolean  "allow_adding_of_pictures"
    t.boolean  "allow_adding_of_video"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ideas", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "imaginer_id"
  end

  create_table "images", :force => true do |t|
    t.text     "description"
    t.integer  "idea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "graphic_file_name"
    t.string   "graphic_content_type"
    t.integer  "graphic_file_size"
  end

  create_table "invitations", :force => true do |t|
    t.integer  "sender_id"
    t.string   "recipient_email"
    t.string   "token"
    t.datetime "sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likings", :force => true do |t|
    t.integer  "believer_id"
    t.integer  "idea_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "beliver_type"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "taggable_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "idea_id"
    t.integer  "backer_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_profiles", :force => true do |t|
    t.text     "url"
    t.text     "about"
    t.string   "twitter_handle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "facebook_uid",        :limit => 8
    t.integer  "invitiation_id"
    t.integer  "invitation_limit"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
