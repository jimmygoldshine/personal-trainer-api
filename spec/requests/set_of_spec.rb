require 'rails_helper'

RSpec.describe "SetOf-API", type: :request do

  let!(:workout) { create(:workout) }
  let!(:exercise) { create(:exercise, workout_id: workout.id) }
  let!(:set_ofs) { create_list(:set_of, 3, exercise_id: exercise.id) }
  let!(:set_of) { set_ofs.first }

  describe 'GET /workouts/workout_id/exercises/exercise_id/set_ofs' do

    before { get "/workouts/#{workout.id}/exercises/#{exercise.id}/set_ofs"}

    it "should return status code 200" do
      expect(response).to have_http_status(200)
    end

    it "should return all set_ofs belonging to that exercise" do
      expect(json.size).to eq(3)
    end

  end

end
