class CreateSightings < ActiveRecord::Migration[5.0]
  def change
    create_table :sightings do |t|
      t.references :animal, foreign_key: true
      t.references :sighteable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
