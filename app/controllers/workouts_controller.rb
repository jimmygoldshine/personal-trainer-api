class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
    render json: @workouts
  end

  def create
    @workout = Workout.create!
    render json: @workout, status: :created
  end

end
