class RemoveNounFromWishes < ActiveRecord::Migration
  def change
    remove_column :wishes, :noun, :string
  end
end
