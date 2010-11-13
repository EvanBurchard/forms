class TheRestOfTheModels < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
    end

    create_table :responses do |t|
      t.integer :submission_id
    end

    create_table :choices do |t|
      t.string :answer
      t.integer :question_id
    end

    create_table :choices_responses, :id => false do |t|
      t.integer :response_id, :integer, :null => false
      t.integer :choice_id, :integer, :null => false 
    end
    create_table :questions do |t|
      t.string :prompt
      t.integer :survey_id
    end

    add_column :submissions, :user_id, :integer
    add_column :submissions, :survey_id, :integer

  end

  def self.down
    drop_table :users
    drop_table :responses
    drop_table :choices
    drop_table :questions
    drop_table :choices_responses
    remove_column :submissions, :survey_id
    remove_column :submissions, :user_id
  end
end
