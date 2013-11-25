module ApplicationHelper
	def safe_params
		params.require(:wish).permit(:nickname, :noun, :favmemory, :thought, :first, :second, :third, :omen, :plnoun, :salutation, :relation, :ps )
	end
end
