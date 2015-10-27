require 'rails_helper'

RSpec.describe Blog, type: :model do
  before(:each) do
    @blog=Blog.create(title: 'Random Title')
  end
  
  it "has one blog after addding one" do
    expect(Blog.count).to eq 1
  end

  it "requires title to be present" do
    @blog = Blog.new(title: '')
    expect(@blog).to_not be_valid
  end

  it "does not require content" do
    expect(@blog).to be_valid
  end

  it "belongs to user" do 
    expect(@blog.user).to_not be_nil
  end
end
