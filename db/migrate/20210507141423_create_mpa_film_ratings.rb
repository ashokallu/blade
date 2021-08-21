class CreateMpaFilmRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :mpa_film_ratings do |t|
      t.string :rating_symbol, limit: 64
      t.string :rating_full_form, limit: 128
      t.string :rating_meaning, limit: 255

      t.timestamps
    end
  end
end
