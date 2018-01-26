class AddPortToEnvironments < ActiveRecord::Migration[5.1]
  def change
    add_column :environments, :dbport, :string
  end
end
