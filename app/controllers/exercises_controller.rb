class ExercisesController < ApplicationController

  def index
    @workout = Workout.find(params[:workout_id])
    @exercises = @workout.exercises.all
    render_json(@exercises)
  end

end
