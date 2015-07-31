class CreateSidebars < ActiveRecord::Migration
  def change
    create_table :sidebars do |t|
      t.string :title
      t.string :image_url
      t.string :description

      t.timestamps null: false
    end
  end
end
