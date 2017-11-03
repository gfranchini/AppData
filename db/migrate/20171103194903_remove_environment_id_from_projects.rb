class RemoveEnvironmentIdFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_reference :projects, :environment, foreign_key: true
  end
end
