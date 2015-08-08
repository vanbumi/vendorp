class CreateMainslides < ActiveRecord::Migration
  def change
    create_table :mainslides do |t|
      t.string :title
      t.string :descrip

      t.timestamps null: false
    end
  end
end
