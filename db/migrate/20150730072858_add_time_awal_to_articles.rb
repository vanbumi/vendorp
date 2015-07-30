class AddTimeAwalToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :time_awal, :date
  end
end
