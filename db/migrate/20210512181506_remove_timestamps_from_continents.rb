class RemoveTimestampsFromContinents < ActiveRecord::Migration[7.0]
  def change
    change_table :continents do |t|
      t.remove_timestamps if_exists: true, if_not_exists: true
    end
  end
end
