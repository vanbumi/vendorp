class AddTimeAkhirToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :time_akhir, :date
  end
end
