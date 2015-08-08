class AddCloudUrlToMainslides < ActiveRecord::Migration
  def change
    add_column :mainslides, :cloud_url, :string
  end
end
