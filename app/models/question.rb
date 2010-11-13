class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choices
  
#untested
  accepts_nested_attributes_for :choices, :reject_if => lambda { |a| a[:answer].blank? }, :allow_destroy => true
end
