class AddNotesToEnvironments < ActiveRecord::Migration[5.1]
  def change
    add_column :environments, :notes, :text
  end
end
