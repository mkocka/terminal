# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130911213240) do

  create_table "answers", :force => true do |t|
    t.text     "answer"
    t.integer  "task_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.text     "info"
    t.text     "program_task"
    t.boolean  "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.text     "rec"
    t.text     "task"
    t.text     "question"
    t.string   "question_answer"
    t.integer  "question_type"
    t.integer  "program_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "task_answers"
    t.text     "reverse"
    t.text     "good"
    t.text     "bad"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "program_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.boolean  "program_status",   :default => false
    t.text     "task_readed"
    t.text     "task_percentage"
    t.integer  "last_task_number"
  end

end
