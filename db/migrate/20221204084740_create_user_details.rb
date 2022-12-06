class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.date :dob
      t.float :level, :default => 0.2
      t.integer :user_id

      t.timestamps
    end
  end
end
