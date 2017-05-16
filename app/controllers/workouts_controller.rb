class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
    render_json(@workouts)
  end

  def show
    @workout = Workout.find(params[:id])
    render_json(@workout)
  end

  def create
    @workout = Workout.create!
    render_json(@workouts, :created)
  end

end
