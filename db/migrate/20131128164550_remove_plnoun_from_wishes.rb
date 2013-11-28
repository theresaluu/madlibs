class RemovePlnounFromWishes < ActiveRecord::Migration
  def change
    remove_column :wishes, :plnoun, :string
  end
end
