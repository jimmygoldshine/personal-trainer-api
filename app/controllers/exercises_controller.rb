class ExercisesController < ApplicationController

  def index
    @workout = Workout.find(params[:workout_id])
    @exercises = @workout.exercises.all
    render_json(@exercises)
  end

  def show
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.find(params[:id])
    render_json(@exercise)
  end

end
