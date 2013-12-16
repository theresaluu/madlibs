class WishesController < ApplicationController

	def new
		@wish = Wish.new
		@user_type = "current_friend"
	end

	def show
		@wish = @friend.wishes.find(params[:id])
	end

	def create
		@wish = @friend.wishes.new(safe_params)

		if @wish.save
			redirect_to @friend.wish
		else
			redirect_to "new"
		end
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