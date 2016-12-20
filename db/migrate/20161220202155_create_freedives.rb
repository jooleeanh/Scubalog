class CreateFreedives < ActiveRecord::Migration[5.0]
  def change
    create_table :freedives do |t|
      t.references :user, foreign_key: true
      t.references :divespot, foreign_key: true
      t.references :gear_set, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at
      t.integer :enjoyment
      t.text :comments
      t.string :dive_type
      t.text :tip
      t.float :max_depth
      t.float :avg_depth
      t.integer :min_temp
      t.integer :max_temp
      t.integer :visibility
      t.json :map_tracks

      t.timestamps
    end
  end
end
