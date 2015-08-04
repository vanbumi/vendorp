class AddSectionIdToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :section_id, :integer
  end
end
