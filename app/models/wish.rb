class Wish < ActiveRecord::Base
	belongs_to :user, class_name: 'User', foreign_key: 'user_id'

end
    # t.string   "jname"
    # t.string   "adj"
    # t.string   "noun"
    # t.string   "noun2"
    # t.string   "favmem"
    # t.string   "thought"
    # t.string   "quote"
    # t.string   "first"
    # t.string   "second"
    # t.string   "third"
    # t.string   "omen"
    # t.string   "adj2"
    # t.string   "plnoun"
    # t.datetime "created_at"
    # t.datetime "updated_at"