class CreateDives < ActiveRecord::Migration[5.0]
  def change
    create_table :dives do |t|
      t.references :divable, polymorphic: true, index: true
      t.string :dive_types, array: true, default: []
      t.boolean :computer, default: false
      t.datetime :start_at
      t.datetime :end_at
      t.float :max_depth
      t.float :avg_depth
      t.integer :min_temp
      t.integer :max_temp
      t.integer :sample_interval
      t.json :data_points

      t.timestamps
    end
  end
end
