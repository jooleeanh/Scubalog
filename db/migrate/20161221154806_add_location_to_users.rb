class AddLocationToUsers < ActiveRecord::Migration[5.0]
  def change
    enable_extension :hstore unless extension_enabled?('hstore')
    add_column :users, :location, :hstore
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
