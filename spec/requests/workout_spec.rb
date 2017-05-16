require 'rails_helper'
require './spec/support/request_helper.rb'

RSpec.describe "Workouts-API", type: :request do

  let!(:workout) { create_list(:workout, 5) }

  describe 'GET /workouts' do

    before { get '/workouts' }

    it "returns workouts" do
      expect(json.size).to eq(5)
    end

    it "returns 200 http status" do
      expect(response).to have_http_status(200)
    end

  end

  describe 'POST /workouts' do

    before { post '/workouts', params: {} }

    it "should return status code 201" do
      expect(response).to have_http_status(201)
    end

  end

end
