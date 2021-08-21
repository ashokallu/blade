class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres, force: true do |t|
      t.string :name, limit: 64

      t.timestamps
    end
  end
end
