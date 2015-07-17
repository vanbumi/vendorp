class RemoveBusinessIdFromVendors < ActiveRecord::Migration
  def change
    remove_column :vendors, :business_id, :integer
  end
end
