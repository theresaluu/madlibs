class WishesController < ApplicationController

	def new
		@wish = Wish.new
		if current_friend
			@user_type = "current_friend"
		else
			@user_type = "non_friend"
		end
	end

	def show
		@wish = @friend.wishes.find(params[:id])
	end

	def create
		wish = @friend.wishes.create!(safe_params)
		redirect_to @friend.wish
	end

	def update
		wish.update_attributes(safe_params)
	end

	private
	def safe_params
		params.require(:wish).permit(:nickname, :noun, :favmemory, :thought, :first, :second, :third, 
			:omen, :plnoun, :salutation, :relation, :ps)
	end
end