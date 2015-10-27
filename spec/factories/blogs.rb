require 'faker'

FactoryGirl.define do
  factory :blog do
    title {Faker::Book.title}
    content {Faker::Lorem.paragraph}
    user
  end
end
