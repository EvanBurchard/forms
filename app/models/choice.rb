class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :responses
  has_many :submissions, :through => :responses

end
