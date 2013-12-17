class WishesController < ApplicationController

	def new
		@user_type = "current_friend"
		@wish = Wish.new(@current_friend)
		
	end

	def show
		@wish = @friend.wishes.find(params[:id])
	end

	def create
		@wish = @friend.wish.create(safe_params)

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
		params.require(:wish).permit(:nickname, :favmemory, :thought, :first, :second, :third, 
			:omen, :salutation, :wisher, :relation, :ps, :friend_id)
	end
end