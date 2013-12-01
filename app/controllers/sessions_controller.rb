class SessionsController < ApplicationController

	def create
		friend = Friend.from_omniauth(env["omniauth.auth"])
		session[:friend_id] = friend.id
		redirect_to root_url
	end

	def destroy
		session[:friend_id] = nil
		redirect_to root_url
	end
end