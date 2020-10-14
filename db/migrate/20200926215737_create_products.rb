class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products, if_not_exists: true, if_exists: true do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
