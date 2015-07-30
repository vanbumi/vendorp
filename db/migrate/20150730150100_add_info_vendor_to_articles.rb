class AddInfoVendorToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :info_vendor, :text
  end
end
