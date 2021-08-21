class CreateContinents < ActiveRecord::Migration[7.0]
  def change
    create_table :continents, force: :cascade do |t|
      t.string :name, limit: 64

      t.timestamps
    end
  end
end
