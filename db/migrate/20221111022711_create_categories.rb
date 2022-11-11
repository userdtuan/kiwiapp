class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.string :category_type

      t.timestamps
    end
  end
end