require 'spec_helper'

describe Submission do
  it { should have_db_column(:time_stamp).of_type(:datetime) }
  it { should have_db_column(:user_id).of_type(:integer) }
  it { should have_db_column(:survey_id).of_type(:integer) }
  it { should belong_to(:user) }
  it { should belong_to(:survey) }
  it { should have_many(:responses) }
end
