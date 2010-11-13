require 'spec_helper'

describe Survey do
  it { should have_db_column(:title).of_type(:string) }
  it { should have_many(:questions) }
  it { should have_many(:submissions) }
  it { should have_many(:users).through(:submissions) }
end

