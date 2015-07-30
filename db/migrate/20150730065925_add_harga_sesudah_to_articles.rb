class AddHargaSesudahToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :harga_sesudah, :integer
  end
end
