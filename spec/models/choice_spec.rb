require 'spec_helper'

describe Choice do
  it { should have_db_column(:answer).of_type(:string) }
  it { should have_db_column(:question_id).of_type(:integer) }
  it { should have_and_belong_to_many(:responses) }
  it { should belong_to(:question) }
end


