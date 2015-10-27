require 'faker'

FactoryGirl.define do
  factory :blog do |b|
    b.title {Faker::Name.title}
  end
end
