class ChangeAuthorTypeInPosts < ActiveRecord::Migration[7.0]
  def up
    change_column :posts, :author, 'integer USING CAST(author AS integer)'
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
  def down
    change_column :posts, :author, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
