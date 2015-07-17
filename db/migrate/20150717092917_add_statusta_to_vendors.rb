class AddStatustaToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :statusta, :string, :default => "Free"
  end
end
