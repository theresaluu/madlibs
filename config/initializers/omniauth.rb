OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :facebook, '1434877450061088', '069d1947f8f720f6d82d63b2f93aeca6'
end