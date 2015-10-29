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

  it "orders descending by create date" do
    @blog1 = FactoryGirl.create(:blog)
    @blog2 = FactoryGirl.create(:blog)
    expect(Blog.all.to_a).to eq [@blog,@blog1,@blog2]
  end
end
