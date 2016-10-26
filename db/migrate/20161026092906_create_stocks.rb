class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :level
      t.float :price
      t.references :album, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
