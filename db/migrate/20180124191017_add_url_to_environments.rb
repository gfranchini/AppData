class AddUrlToEnvironments < ActiveRecord::Migration[5.1]
  def change
    add_column :environments, :url, :string
  end
end
