class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :name, null: false
      t.date :dob, null: false
      t.text :label, null: false

      t.timestamps null: false
    end
  end
end
