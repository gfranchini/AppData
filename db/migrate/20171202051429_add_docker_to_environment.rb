class AddDockerToEnvironment < ActiveRecord::Migration[5.1]
  def change
    add_column :environments, :docker, :boolean
    add_column :environments, :rancher, :boolean
  end
end
