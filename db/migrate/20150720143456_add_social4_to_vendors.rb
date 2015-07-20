class AddSocial4ToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :social4, :string
  end
end
