class AddAlbumIdToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :album_id, :integer
  end
end
