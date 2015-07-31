class AddActiveSidebars < ActiveRecord::Migration
  def change
  	add_column :sidebars, :active, :string, :default => "N"
  end
end
