class Submission < ActiveRecord::Base

  has_many :responses
  belongs_to :survey
  belongs_to :user
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :responses

end
