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

  private

  def get_exercise
    @exercise = Exercise.find(params[:exercise_id])
  end

end
