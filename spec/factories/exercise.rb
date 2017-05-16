FactoryGirl.define do
  factory :exercise do
    name { Faker::LeagueOfLegends.masteries }
  end
end
