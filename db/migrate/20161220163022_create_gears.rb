class CreateGears < ActiveRecord::Migration[5.0]
  def change
    create_table :gears do |t|
      t.string :category
      t.string :brand
      t.string :name
      t.string :size
      t.string :detail

      t.timestamps
    end
  end
end
