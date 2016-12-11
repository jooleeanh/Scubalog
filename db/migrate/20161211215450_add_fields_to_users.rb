class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :dob, :date
    add_column :users, :gender, :string
    add_column :users, :location, :string
    add_column :users, :latitude, :string
    add_column :users, :longitude, :string
  end
end
