class RemoveVendorCategoryFromVendors < ActiveRecord::Migration
  def change
    remove_column :vendors, :vendor_category, :integer
  end
end
