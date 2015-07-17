class RemoveStatusFromVendors < ActiveRecord::Migration
  def change
    remove_column :vendors, :status, :string
  end
end
