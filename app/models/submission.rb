class Submission < ActiveRecord::Base

  has_many :responses
  belongs_to :survey
  belongs_to :user

end
