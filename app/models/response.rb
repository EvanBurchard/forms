class Response < ActiveRecord::Base
  belongs_to :choice
  belongs_to :submission

  named_scope :of_submission, lambda {|s| { :conditions => ["submission_id = ?",  s.id]}}
end
