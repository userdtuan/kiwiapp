class AddStatus < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :status, :boolean, :default => false
  end
end
