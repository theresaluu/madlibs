class WishesController < ApplicationController

	def new
		@user_type = "current_friend"
		@wish = current_friend.build_wish
		
	end

	def show
		@wish = @friend.wishes.find(params[:id])
	end

	def create
		@wish = current_friend.build_wish(safe_params)

		if @wish.save!
			redirect_to "/"
		else
			redirect_to "new"
		end
	end

	def update
		wish.update_attributes(safe_params)
	end

	private
	def safe_params
		params.require(:wish).permit(:nickname, :favmem, :thought, :first, :second, :third, 
			:omen, :salutation, :wisher, :relationship, :ps, :friend_id)
	end
end