FactoryGirl.define do
  factory :set_of do
    reps { Faker::number.between(0,20) }
    weight { Faker::decimal(2) }
  end
end
