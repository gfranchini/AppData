class CreateLoadBalancers < ActiveRecord::Migration[5.1]
  def change
    create_table :load_balancers do |t|
      t.string :ip
      t.string :brand
      t.string :applicability
      t.references :environment, foreign_key: true

      t.timestamps
    end
  end
end
