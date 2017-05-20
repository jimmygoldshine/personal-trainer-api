require 'factory_girl_rails'

FactoryGirl.create_list(:workout,10)

(1..10).each do |id|
  FactoryGirl.create_list(:exercise, 3, workout_id: id)
end
