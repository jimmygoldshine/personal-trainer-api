require 'rails_helper'
require './spec/support/request_helper.rb'

RSpec.describe "Workouts-API", type: :request do

  let!(:workout) { create_list(:workout, 5) }
  let!(:id) { Workout.first.id }

  describe 'GET /workouts' do

    before { get '/workouts' }

    it "returns 200 http status" do
      expect(response).to have_http_status(200)
    end

    it "returns workouts" do
      expect(json.size).to eq(5)
    end

  end

  describe 'GET /workouts/:id' do

    before { get "/workouts/#{id}" }

    it "should return status code 200" do
      expect(response).to have_http_status(200)
    end

    it "should return correct record" do
      expect(json["id"]).to eq(id)
    end

  end

  describe 'POST /workouts' do

    before { post '/workouts', params: {} }

    it "should return status code 201" do
      expect(response).to have_http_status(201)
    end

  end

  describe 'DELETE /workouts/id' do

    before { delete "/workouts/#{id}" }

    it "should return status code 200" do
      expect(response).to have_http_status(200)
    end

    it "should return deleted object" do
      expect(json["id"]).to eq(id)
    end

  end

end
