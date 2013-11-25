class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :provideruid
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
