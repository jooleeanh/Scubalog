class CreateDivespots < ActiveRecord::Migration[5.0]
  def change
    create_table :divespots do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude
      t.float :max_depth
      t.float :avg_depth
      t.float :salinity
      t.boolean :shore
      t.string :entry_difficulty

      t.timestamps
    end
  end
end
