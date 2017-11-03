class AddEnvironmentToServers < ActiveRecord::Migration[5.1]
  def change
    add_reference :servers, :environment, foreign_key: true
  end
end
