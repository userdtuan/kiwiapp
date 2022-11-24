class ChangeDataTypeForPublishAt < ActiveRecord::Migration[7.0]
  def up
    change_table :books do |t|
      t.change :publish_at, :date
    end
  end
  def down
    change_table :books do |t|
      t.change :publish_at, :datetime
    end
  end
end
