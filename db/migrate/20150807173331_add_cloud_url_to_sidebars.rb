class AddCloudUrlToSidebars < ActiveRecord::Migration
  def change
    add_column :sidebars, :cloud_url, :string
  end
end
