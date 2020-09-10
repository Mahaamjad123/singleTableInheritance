class DropMotocycles < ActiveRecord::Migration[6.0]
  def change
    drop_table :motocycles
  end
end
