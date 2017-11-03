class RemoveRancherFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :rancher
  end
end
