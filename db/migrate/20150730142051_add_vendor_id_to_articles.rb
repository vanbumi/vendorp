class AddVendorIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :vendor_id, :integer
  end
end
