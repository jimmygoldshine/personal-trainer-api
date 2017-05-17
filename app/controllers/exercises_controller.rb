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

  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = Exercise.create!(exercise_params)
    render_json(@exercise, :created)
  end

  def update
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.find(params[:id])
    @exercise.update!(exercise_params)
    render_json(@exercise)
  end

  private

  def exercise_params
    params.permit(:name, :workout_id)
  end

end
