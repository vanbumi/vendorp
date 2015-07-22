class AddActiveToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :active, :string, :default => "No"
  end
end
