require 'spec_helper'

describe Question do
  it { should have_db_column(:survey_id).of_type(:integer) }
  it { should have_db_column(:prompt).of_type(:string) }
  it { should belong_to(:survey) }
  it { should have_many(:choices) }
end

