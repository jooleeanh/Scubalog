class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :dob, :date
    add_column :users, :gender, :integer
  end
end
