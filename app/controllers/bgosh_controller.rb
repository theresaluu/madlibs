class BgoshController < ApplicationController
	def index
		@wishes = Wish.all
	end
end