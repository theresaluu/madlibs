module ApplicationHelper
	def safe_params
		params.require(:wish).permit(:nickname, :favmemory, :thought, :first, :second, :third, :omen, :salutation, :relationship, :wisher, :ps, :friend_id )
	end
end
