ActiveRecord::Schema.define(version: 20141116131815) do
  create_table "vote_targets", force: true do |t|
    t.string   "title"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.string   "target_type"
    t.integer  "attendee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
    t.integer  "vote_target_id"
  end

  add_index "votes", ["attendee_id"], name: "index_votes_on_attendee_id", unique: true
  add_index "votes", ["target_type"], name: "index_votes_on_target_type"

end
