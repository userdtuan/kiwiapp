class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :type, :loai

  end
end
