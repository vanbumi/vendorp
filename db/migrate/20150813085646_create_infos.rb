class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :comp_name
      t.text :comp_address
      t.string :comp_phone
      t.string :comp_email
      t.string :comp_web
      t.text :comp_social

      t.timestamps null: false
    end
  end
end
