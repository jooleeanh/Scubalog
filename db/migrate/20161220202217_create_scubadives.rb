class CreateScubadives < ActiveRecord::Migration[5.0]
  def change
    create_table :scubadives do |t|
      t.references :user, foreign_key: true
      t.references :divespot, foreign_key: true
      t.references :gear_set, foreign_key: true
      t.integer :enjoyment
      t.text :comments
      t.text :tip_for_others
      t.json :map_tracks
      t.integer :visibility
      t.integer :start_air
      t.integer :end_air

      t.timestamps
    end
  end
end
