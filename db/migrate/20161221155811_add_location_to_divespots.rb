class AddLocationToDivespots < ActiveRecord::Migration[5.0]
  def change
    enable_extension :hstore unless extension_enabled?('hstore')
    add_column :divespots, :location, :hstore
    add_column :divespots, :latitude, :float
    add_column :divespots, :longitude, :float
  end
end
