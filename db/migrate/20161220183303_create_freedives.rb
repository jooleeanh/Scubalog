class CreateFreedives < ActiveRecord::Migration[5.0]
  def change
    create_table :freedives do |t|
      t.references :user, foreign_key: true
      t.references :divespot, foreign_key: true
      t.references :gear_set, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at
      t.array :dive_types
      t.integer :enjoyment
      t.integer :visibility
      t.json :map_tracks
      t.text :comments
      t.text :tip
      t.float :max_depth
      t.float :avg_depth
      t.integer :min_temp
      t.integer :max_temp

      t.timestamps
    end
  end
end
