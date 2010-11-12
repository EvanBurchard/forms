require 'spec_helper'

describe Survey do
  it { should have_db_column(:title).of_type(:string) }
end

