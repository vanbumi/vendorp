class AlterColumnInfosCompPhone < ActiveRecord::Migration
  def self.up
    change_table :infos do |t|
      t.change :comp_phone, :string
    end
  end
  def self.down
    change_table :infos do |t|
      t.change :comp_phone, :integer
    end
  end
end
