class AddHargaAwalToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :harga_awal, :integer
  end
end
