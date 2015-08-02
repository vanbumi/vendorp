class AddKolomToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :kolom, :integer
  end
end
