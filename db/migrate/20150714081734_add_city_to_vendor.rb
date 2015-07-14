class AddCityToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :city, :string
  end
end
