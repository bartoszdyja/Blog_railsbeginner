require 'faker'

FactoryGirl.define do
  factory :blog do |b|
    b.title {Faker::Book.title}
    b.content {Faker::Lorem.paragraph}
  end
end
