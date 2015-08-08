class AddSlidenumberToMainslides < ActiveRecord::Migration
  def change
    add_column :mainslides, :slidenumber, :integer
  end
end
