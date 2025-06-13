class AddCoordinatesToFlats < ActiveRecord::Migration[8.0]
  def change
    add_column :flats, :latitude, :decimal
    add_column :flats, :longitude, :decimal
  end
end
