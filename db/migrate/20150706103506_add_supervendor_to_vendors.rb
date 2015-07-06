class AddSupervendorToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :supervendor, :boolean, :default => false
  end
end
