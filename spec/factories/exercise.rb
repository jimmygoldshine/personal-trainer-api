FactoryGirl.define do
  factory :exercise do
    name { Faker::Lorem.word }
    workout_id nil
  end
end
