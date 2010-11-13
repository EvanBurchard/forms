require 'spec_helper'

describe User do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_many(:submissions) }
  it { should have_many(:surveys).through(:submissions) }
end

