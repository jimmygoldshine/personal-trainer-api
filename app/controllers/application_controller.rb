class ApplicationController < ActionController::API

  include Response

  before_filter :expire_hsts

  private

  def expire_hsts
    response.headers["Strict-Transport-Security"] = 'max-age=0'
  end

end
