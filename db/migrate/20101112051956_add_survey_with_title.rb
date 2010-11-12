class AddSurveyWithTitle < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.string "title"
    end
  end

  def self.down
    drop_table :surveys
  end
end
