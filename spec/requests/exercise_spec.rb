require 'rails_helper'

RSpec.describe "Exercise-API", type: :request do

  let!(:workout) { create(:workout) }
  let!(:exercises) { create_list(:exercise, 5, workout_id: workout.id) }
  let!(:exercise) { Exercise.first }
  let!(:id) { exercise.id }

  describe "GET workouts/:id/exercises" do

    before { get "/workouts/#{workout.id}/exercises" }

    it "should return status code of 200" do
      expect(response).to have_http_status(200)
    end

    it "should return all exercises belonging to its workout" do
      expect(json.size).to eq(5)
    end

  end

  describe "GET /workouts/workout_id/exercises/:id" do

    before { get "/workouts/#{workout.id}/exercises/#{id}" }

    it "should return status code 200" do
      expect(response).to have_http_status(200)
    end

    it "should return the correct exercise" do
      expect(json["name"]).to eq(exercise.name)
    end

  end

end
