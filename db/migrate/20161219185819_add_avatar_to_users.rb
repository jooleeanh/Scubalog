class AddAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :avatar_picture_url, :string
  end
end
