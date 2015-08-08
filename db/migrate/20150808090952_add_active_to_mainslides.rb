class AddActiveToMainslides < ActiveRecord::Migration
  def change
    add_column :mainslides, :active, :string
  end
end
