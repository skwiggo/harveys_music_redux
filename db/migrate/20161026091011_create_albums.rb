class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :genre
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
