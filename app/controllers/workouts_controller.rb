class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
    render json: @workouts
  end

  def show
    @workout = Workout.find(params[:id])
    render json: @workout
  end

  def create
    @workout = Workout.create!
    render json: @workout, status: :created
  end

end
