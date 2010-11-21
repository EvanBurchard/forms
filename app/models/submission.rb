class Submission < ActiveRecord::Base

  has_many :responses
  has_many :choices, :through => :responses
  belongs_to :survey
  belongs_to :user

end
