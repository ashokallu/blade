class RemoveTimestampsFromGenres < ActiveRecord::Migration[7.0]
  def change
    change_table(:genres) do |t|
      t.remove_timestamps if_not_exists: true, if_exists: true
    end
  end
end
