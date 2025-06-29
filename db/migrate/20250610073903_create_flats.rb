class CreateFlats < ActiveRecord::Migration[8.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_per_night
      t.float :rating
      t.string :photo_url

      t.timestamps
    end
  end
end
