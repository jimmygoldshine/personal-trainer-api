class ExercisesController < ApplicationController

  before_action :set_workout, only: [:index, :show, :update]

  def index
    @exercises = @workout.exercises.all
    render_json(@exercises)
  end

  def show
    @exercise = @workout.exercises.find(params[:id])
    render_json(@exercise)
  end

  def create
    @exercise = Exercise.create!(exercise_params)
    render_json(@exercise, :created)
  end

  def update
    @exercise = @workout.exercises.find(params[:id])
    @exercise.update!(exercise_params)
    render_json(@exercise)
  end

  private

  def exercise_params
    params.permit(:name, :workout_id)
  end

  def set_workout
    @workout = Workout.find(params[:workout_id])
  end

end
