class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_friend
  	@current_friend||= Friend.find(session[:friend_id]) if session[:friend_id]
  end

  helper_method :current_friend
end
