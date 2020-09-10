class Table < ActiveRecord::Migration[6.0]
  def change
    drop_table :cars
    drop_table :motorcycles
  end
end
