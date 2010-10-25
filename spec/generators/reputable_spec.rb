require 'spec_helper'
  
describe :acts_as_reputable do
  it "should generate a Reputations migration" do
    subject.should generate(:migration_template, "migrations/create_reputations.rb",
              "db/migrate/create_reputations.rb")
  end
end