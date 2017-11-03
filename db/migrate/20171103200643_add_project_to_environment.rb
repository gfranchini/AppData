class AddProjectToEnvironment < ActiveRecord::Migration[5.1]
  def change
    add_reference :environments, :project, foreign_key: true
  end
end
