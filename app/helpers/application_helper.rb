module ApplicationHelper
	def safe_params
		params.require(:wish).permit(:nickname, :favmemory, :thought, :first, :second, :third, :omen, :salutation, :relationship, :wisher, :ps )
	end
end
