class CreateFreediveSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :freedive_sessions do |t|
      t.references :user, foreign_key: true
      t.references :divespot, foreign_key: true
      t.references :gear_set, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at
      t.integer :enjoyment
      t.text :comments
      t.text :tip_for_others
      t.json :map_tracks
      t.integer :visibility

      t.timestamps
    end
  end
end
