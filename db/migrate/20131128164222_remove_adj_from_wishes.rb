class RemoveAdjFromWishes < ActiveRecord::Migration
  def change
    remove_column :wishes, :adj2, :string
  end
end
