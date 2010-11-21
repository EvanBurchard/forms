require 'spec_helper'

describe Response do
  it { should have_db_column(:submission_id).of_type(:integer) }
  it { should have_db_column(:choice_id).of_type(:integer) }
  it { should belong_to(:choice) }
  it { should belong_to(:submission) }
end
