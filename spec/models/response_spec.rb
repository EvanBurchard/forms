require 'spec_helper'

describe Response do
  it { should have_db_column(:submission_id).of_type(:integer) }
  it { should have_and_belong_to_many(:choices) }
  it { should belong_to(:submission) }
end
