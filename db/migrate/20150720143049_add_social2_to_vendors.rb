class AddSocial2ToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :social2, :string
  end
end
