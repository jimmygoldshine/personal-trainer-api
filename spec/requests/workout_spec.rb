require 'rails_helper'
require './spec/support/request_helper.rb'

RSpec.describe "Workouts-API", type: :request do

  let!(:workout) { create_list(:workout, 5) }

  describe 'GET /workouts' do

    before { get '/workouts' }

    it "returns workouts" do
      expect(json.size).to eq(5)
    end

  end

end
