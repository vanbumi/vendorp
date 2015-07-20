class AddSocial3ToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :social3, :string
  end
end
