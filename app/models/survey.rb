class Survey < ActiveRecord::Base
  has_many :questions
  has_many :submissions
  has_many :users, :through => :submissions

end
