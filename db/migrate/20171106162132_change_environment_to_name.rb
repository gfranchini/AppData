class ChangeEnvironmentToName < ActiveRecord::Migration[5.1]
  def change
    rename_column :environments, :environment, :name
  end
end
