class AddVendorIdToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :vendor_id, :integer
  end
end
