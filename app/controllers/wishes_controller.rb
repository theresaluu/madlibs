class WishesController < ApplicationController

	def new
		@wish = Wish.new
		@wishes = Wish.all
		if current_friend
			@user_type = "current_friend"
		else
			@user_type = "non_friend"
		end
	end

	def create
		wish = wish_list.wishes.create!(safe_params)
		render json: wish, status: 201
	end

	def update
		wish.update_attributes(safe_params)
		render nothing: true, status: 204
	end

	private
	def safe_params
		params.require(:wish).permit(:nickname, :noun, :favmemory, :thought, :first, :second, :third, 
			:omen, :plnoun, :salutation, :relation, :ps)
	end
end