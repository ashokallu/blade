class AddUniqueIndexToNameColumnGenres < ActiveRecord::Migration[7.0]
  def change
    change_table :genres do |t|
      t.index(:name, unique: true)
    end
  end
end
