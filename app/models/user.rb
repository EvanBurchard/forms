class User < ActiveRecord::Base
  has_many :submissions
  has_many :surveys, :through => :submissions

end
