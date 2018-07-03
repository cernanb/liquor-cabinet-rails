class ApplicationController < ActionController::Base

  helpers do
    def logged_in?
      !!current_user
    end
    def current_user
      @user ||= User.find(session[:user_id])
    end
  end
end
