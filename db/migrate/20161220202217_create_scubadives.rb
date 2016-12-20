class CreateScubadives < ActiveRecord::Migration[5.0]
  def change
    create_table :scubadives do |t|
      t.references :user, foreign_key: true
      t.references :divespot, foreign_key: true
      t.references :gear_set, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at
      t.integer :enjoyment
      t.text :comments
      t.string :dive_type
      t.text :tip_for_others
      t.float :max_depth
      t.float :avg_depth
      t.float :min_temp
      t.float :max_temp
      t.integer :visibility
      t.integer :start_air
      t.integer :end_air
      t.json :polygon

      t.timestamps
    end
  end
end
