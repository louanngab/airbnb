class AddInteriorPhotoUrlsToFlats < ActiveRecord::Migration[8.0]
  def change
    add_column :flats, :interior_photo_urls, :text
  end
end
