class RemoveProjectFromEnvironments < ActiveRecord::Migration[5.1]
  def change
    remove_column :environments, :project_id
  end
end
