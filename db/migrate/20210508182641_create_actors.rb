class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.string :first_name, limit: 64
      t.string :last_name, limit: 64
      t.date :birthdate
      t.integer :birth_year
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
