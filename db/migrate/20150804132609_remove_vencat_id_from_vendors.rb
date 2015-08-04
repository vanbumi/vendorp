class RemoveVencatIdFromVendors < ActiveRecord::Migration
  def change
    remove_column :vendors, :vencat_id, :integer
  end
end
