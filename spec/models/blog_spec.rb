require 'rails_helper'

RSpec.describe Blog, type: :model do
  before(:each) do
    @blog=FactoryGirl.create(:blog)
  end

  it "requires a title" do
    expect(FactoryGirl.build(:blog, title: "")).to_not be_valid
  end

  it "requires a content" do
    expect(FactoryGirl.build(:blog, content: "")).to_not be_valid
  end

  it "shows when was created"

  it "belongs to user" do 
    expect(@blog.user).to_not be_nil
  end

  it "has a valid factory" do 
    expect(FactoryGirl.create(:blog)).to be_valid
  end

  it "has unique title"
end
