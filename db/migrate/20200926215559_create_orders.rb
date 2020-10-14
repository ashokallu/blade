class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders, if_not_exists: true, if_exists: true do |t|
      t.integer :quantity
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
