require 'spec_helper'

describe Submission do
  it { should have_db_column(:time_stamp).of_type(:datetime) }
end
