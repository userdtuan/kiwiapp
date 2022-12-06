class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.decimal :price, :default => 0
      t.datetime :publish_at
      t.timestamps
    end
  end
end
