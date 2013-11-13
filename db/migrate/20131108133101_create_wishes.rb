class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :jname
      t.string :adj
      t.string :noun
      t.string :noun2
      t.string :favmem
      t.string :thought
      t.string :quote
      t.string :first
      t.string :second
      t.string :third
      t.string :omen
      t.string :adj2
      t.string :plnoun

      t.timestamps
    end
  end
end
