class AddBusinessIdToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :business_id, :integer
  end
end
