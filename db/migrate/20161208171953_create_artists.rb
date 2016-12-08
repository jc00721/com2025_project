class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :name
      t.date :dob
      t.text :label

      t.timestamps null: false
    end
  end
end
