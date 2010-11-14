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

ActiveRecord::Schema.define(:version => 20101114002424) do

  create_table "choices", :force => true do |t|
    t.string  "answer"
    t.integer "question_id"
  end

  create_table "choices_responses", :id => false, :force => true do |t|
    t.integer "response_id", :null => false
    t.integer "integer",     :null => false
    t.integer "choice_id",   :null => false
  end

  create_table "questions", :force => true do |t|
    t.string  "prompt"
    t.integer "survey_id"
    t.string  "type_of_question"
  end

  create_table "responses", :force => true do |t|
    t.integer "submission_id"
  end

  create_table "submissions", :force => true do |t|
    t.datetime "time_stamp"
    t.integer  "user_id"
    t.integer  "survey_id"
  end

  create_table "surveys", :force => true do |t|
    t.string "title"
  end

  create_table "users", :force => true do |t|
    t.string "name"
  end

end
