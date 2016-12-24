class CreateBuddies < ActiveRecord::Migration[5.0]
  def change
    create_table :buddies do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.references :buddable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
