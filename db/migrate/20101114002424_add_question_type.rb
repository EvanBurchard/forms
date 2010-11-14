class AddQuestionType < ActiveRecord::Migration
  def self.up
    add_column :questions, :type_of_question, :string
  end

  def self.down
    remove_column :questions, :type_of_question
  end
end
