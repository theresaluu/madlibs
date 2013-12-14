class AddWisherToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :wisher, :string
  end
end
