class AddContactpToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :contactp, :string
  end
end
