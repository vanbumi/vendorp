class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :name
      t.string :business
      t.string :image_url

      t.timestamps null: false
    end
  end
end
