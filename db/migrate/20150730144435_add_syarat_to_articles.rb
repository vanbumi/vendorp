class AddSyaratToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :syarat, :string
  end
end
