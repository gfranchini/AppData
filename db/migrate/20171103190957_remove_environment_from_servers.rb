class RemoveEnvironmentFromServers < ActiveRecord::Migration[5.1]
  def change
    remove_reference :servers, :environment, foreign_key: true
  end
end
