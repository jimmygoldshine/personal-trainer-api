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

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    render_json(@workout)
  end

end
