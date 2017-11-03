class RemoveProjectFromServers < ActiveRecord::Migration[5.1]
  def change
    remove_reference :servers, :project, foreign_key: true
  end
end
