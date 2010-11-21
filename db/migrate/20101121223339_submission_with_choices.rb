class SubmissionWithChoices < ActiveRecord::Migration
  def self.up
    drop_table "choices_responses"
    add_column :responses, :choice_id, :integer
  end

  def self.down
    create_table "choices_responses", :id => false, :force => true do |t|
      t.integer "response_id"
      t.integer "integer"
      t.integer "choice_id"
    end
    remove_column :responses, :choice_id
  end
end
