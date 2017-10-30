class AddOsToServers < ActiveRecord::Migration[5.1]
  def change
    add_column :servers, :operating_system, :string
  end
end
