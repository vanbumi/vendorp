class AddAddressToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :address, :text
  end
end
