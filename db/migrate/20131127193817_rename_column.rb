class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :wishes, :noun2, :salutation
  	rename_column :wishes, :quote, :relationship
  	rename_column :wishes, :adj, :ps
  	rename_column :wishes, :jname, :nickname
  	rename_column :friends, :provideruid, :provider

  	add_column :friends, :uid
  end
end
