class AddUniqueIndexOnNameToContinents < ActiveRecord::Migration[7.0]
  def change
    change_table :continents do |t|
      unless reverting?
        t.index :name, unique: true, if_not_exists: true
      else
        t.index :name, unique: true, if_exists: true
      end
    end
  end
end
