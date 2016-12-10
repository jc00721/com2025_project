class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.text :title, null: false
      t.belongs_to :artist, index: true, foreign_key: true, null: false
      t.integer :year, null: false
      t.decimal :length, null: false
      t.integer :tracks, null: false

      t.timestamps null: false
    end
  end
end
