class AddPreferencesToUsers < ActiveRecord::Migration[5.0]
  def change
    enable_extension :hstore unless extension_enabled?('hstore')
    add_column :users, :preferences, :hstore
  end
end
