class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries, if_not_exists: true, if_exists: true, force: :cascade do |t|
      t.string :name
      t.string :country_code, limit: 5
      t.references :continent, null: false, foreign_key: true
      # t.references :continent, null: false, foreign_key: false

      t.timestamps
    end
  end
end
