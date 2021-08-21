class AddGenderToActors < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      CREATE TYPE gender AS ENUM ('Male', 'Female', 'Transgender', 'Other');
    SQL
    add_column :actors, :gender, :gender
    add_index :actors, :gender
  end

  def down
    remove_column :actors, :gender
    execute <<-SQL
      DROP TYPE gender;
    SQL
  end
end
