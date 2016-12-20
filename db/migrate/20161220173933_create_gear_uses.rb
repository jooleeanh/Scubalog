class CreateGearUses < ActiveRecord::Migration[5.0]
  def change
    create_table :gear_uses do |t|
      t.references :gear_set, foreign_key: true
      t.references :gear, foreign_key: true

      t.timestamps
    end
  end
end
