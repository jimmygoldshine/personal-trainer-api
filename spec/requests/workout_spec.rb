require 'rails_helper'

RSpec.describe "Workouts-API", type: :request do

  let(:workout) { create_list(:workout, 5) }

  describe 'GET /workouts' do

    before { get '/workouts' }

    it "returns workouts" do
      expect(workout.size).to eq(5)
    end

  end

end
