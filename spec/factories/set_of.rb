FactoryGirl.define do
  factory :set_of do
    reps { Faker::Number.between(0,20) }
    weight { Faker::Number.decimal(1) }
  end
end
