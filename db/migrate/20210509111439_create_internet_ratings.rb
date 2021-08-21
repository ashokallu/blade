class CreateInternetRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :internet_ratings do |t|
      t.decimal :imdb_rating, precision: 3, scale: 2
      t.integer :imdb_votes
      t.decimal :metascore_rating, precision: 5, scale: 3
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
