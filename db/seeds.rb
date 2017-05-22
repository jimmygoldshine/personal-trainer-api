require 'factory_girl_rails'


case Rails.env
when "development"
  FactoryGirl.create_list(:workout,10)
  (1..10).each do |id|
    FactoryGirl.create_list(:exercise, 3, workout_id: id)
  end
when "production"
   FactoryGirl.create(:workout)
   FactoryGirl.create(:exercise, workout_id: 1)
   FactoryGirl.create(:set_of, weight: 1000, reps: 50, exercise_id: 1)
end
