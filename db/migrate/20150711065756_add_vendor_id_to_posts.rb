class AddVendorIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :vendor_id, :integer
  end
end
