class AddSocialToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :social, :string
  end
end
