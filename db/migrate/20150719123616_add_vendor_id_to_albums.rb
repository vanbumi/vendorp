class AddVendorIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :vendor_id, :integer
  end
end
