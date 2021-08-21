class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.time :running_time
      t.date :release_date
      t.integer :release_year
      t.references :director, null: false, foreign_key: true
      t.references :distribution_company, null: false, foreign_key: true
      t.references :mpa_film_rating, null: false, foreign_key: true

      t.timestamps
    end
  end
end
