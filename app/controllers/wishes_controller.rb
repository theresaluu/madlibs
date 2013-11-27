class WishesController < ApplicationController
	def index
		@wishes = Wish.all
	end

	def new
		@wish = Wish.new
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