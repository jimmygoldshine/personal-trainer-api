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

  describe 'GET /workouts/workout_id/exercises/exercise_id/set_ofs/id' do

    before { get "/workouts/#{workout.id}/exercises/#{exercise.id}/set_ofs/#{set_of.id}"}

    it "should return status code 200" do
      expect(response).to have_http_status(200)
    end

    it "should return correct set_of item" do
      expect(json["weight"]).to eq(set_of.weight)
      expect(json["reps"]).to eq(set_of.reps)
    end
  end

  describe 'POST /workouts/workout_id/exercises/exercise_id/set_ofs' do

    before { post "/workouts/#{workout.id}/exercises/#{exercise.id}/set_ofs", params: { weight: "1000", reps: "50" } }

    it "should return status code 201" do
      expect(response).to have_http_status(201)
    end

    it "should create the new set_of" do
      expect(json["weight"]).to eq(1000)
      expect(json["reps"]).to eq(50)
    end
  end

end
