class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  respond_to :html, :json
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
      #my code cause couldn't find the id change to
      #@current_user ||= User.find(session[:id]) if session[:id]

  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must logged in to perform action"
      redirect_to root_path
    end
  end
end
