class CreateEnvironments < ActiveRecord::Migration[5.1]
  def change
    create_table :environments do |t|
      t.string :environment
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
