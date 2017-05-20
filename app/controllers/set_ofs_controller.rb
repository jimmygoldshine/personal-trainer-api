class SetOfsController < ApplicationController

  before_action :get_exercise

  def index
    @set_ofs = @exercise.set_ofs
    render_json(@set_ofs)
  end

  def show
    @set_of = @exercise.set_ofs.find(params[:id])
    render_json(@set_of)
  end

  def create
    @set_of = SetOf.create!(set_of_params)
    render_json(@set_of, :created)
  end

  private

  def get_exercise
    @exercise = Exercise.find(params[:exercise_id])
  end

  def set_of_params
    params.permit(:weight, :reps, :exercise_id)
  end

end
