class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?

  def logged_in?
    !!current_user
  end
  
  def current_user
    @user ||= User.find(session[:user_id])
  end
end
