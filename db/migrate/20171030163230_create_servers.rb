class CreateServers < ActiveRecord::Migration[5.1]
  def change
    create_table :servers do |t|
      t.string :hostname
      t.string :ip
      t.integer :cpu
      t.integer :memory
      t.integer :storage
      t.text :location
      t.text :notes
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
