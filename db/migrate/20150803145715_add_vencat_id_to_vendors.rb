class AddVencatIdToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :vencat_id, :integer
  end
end
