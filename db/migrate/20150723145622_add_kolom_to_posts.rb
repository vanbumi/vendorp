class AddKolomToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :kolom, :string
  end
end
