class Survey < ActiveRecord::Base
  has_many :questions
  has_many :submissions
  has_many :users, :through => :submissions
  
 #untested 
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:prompt].blank? }, :allow_destroy => true

end
