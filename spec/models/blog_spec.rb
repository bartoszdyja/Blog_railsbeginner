require 'rails_helper'

RSpec.describe Blog, type: :model do
  before(:each) do
    @blog=FactoryGirl.create(:blog)
  end

  it "does not require content" do
    expect(@blog).to be_valid
  end

  it "belongs to user" do 
    expect(@blog.user).to_not be_nil
  end
  it "has a valid factory" do 
  end
end
