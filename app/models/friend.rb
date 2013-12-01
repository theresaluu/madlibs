class Friend < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |friend|
      friend.provider = auth.provider
      friend.uid = auth.uid
      friend.name = auth.info.name
      friend.oauth_token = auth.credentials.token
      friend.oauth_expires_at = Time.at(auth.credentials.expires_at)
      friend.save!
    end
  end

	has_one :wish
end
