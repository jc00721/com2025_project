class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :title, null: false
      t.belongs_to :album, index: true, foreign_key: true, null: false
      t.string :genre, null: false
      t.decimal :length, null: false
      t.boolean :single, null: false

      t.timestamps null: false
    end
  end
end
