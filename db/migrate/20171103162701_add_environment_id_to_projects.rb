class AddEnvironmentIdToProjects < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :environment, foreign_key: true
  end
end
