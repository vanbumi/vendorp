class AddVendorCategoryToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :vendor_category, :string
  end
end
