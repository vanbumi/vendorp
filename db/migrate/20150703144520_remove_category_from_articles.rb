class RemoveCategoryFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :category, :string
  end
end
