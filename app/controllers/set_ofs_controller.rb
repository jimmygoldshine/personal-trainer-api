class SetOfsController < ApplicationController

  def index
    @exercise = Exercise.find(params[:exercise_id])
    @set_ofs = @exercise.set_ofs
    render_json(@set_ofs)
  end

end
