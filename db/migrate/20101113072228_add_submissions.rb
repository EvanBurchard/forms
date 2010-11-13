class AddSubmissions < ActiveRecord::Migration
  def self.up
    create_table :submissions do |t|
      t.datetime "time_stamp"
    end
  end

  def self.down
    drop_table :submissions
  end
end
