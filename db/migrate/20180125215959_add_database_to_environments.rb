class AddDatabaseToEnvironments < ActiveRecord::Migration[5.1]
  def change
    add_column :environments, :dbhost, :string
    add_column :environments, :dbuser, :string
    add_column :environments, :dbname, :string
  end
end
