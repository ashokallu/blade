class AddUniqueIndexOnCountryCodeToCountries < ActiveRecord::Migration[7.0]
  def change
    change_table :countries do |t|
      unless reverting?
        t.index :name, unique: true, if_not_exists: true
        t.index :country_code, unique: true, if_not_exists: true
      else
        t.index :name, unique: true, if_exists: true
        t.index :country_code, unique: true, if_exists: true
      end
    end
  end
end
