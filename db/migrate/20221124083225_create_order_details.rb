class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.integer :book_id
      t.integer :order_id
      t.integer :quantity

      t.timestamps
    end
  end
end
