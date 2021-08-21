class CreateDistributionCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :distribution_companies do |t|
      t.string :name
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
