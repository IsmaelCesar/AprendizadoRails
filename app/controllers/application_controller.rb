class ApplicationController < ActionController::Base
  include SessionsHelper
  def authorize
    unless logged_in?
      redirect_to root_path
    end
  end
end
