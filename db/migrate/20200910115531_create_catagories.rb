class CreateCatagories < ActiveRecord::Migration[6.0]
  def change
    create_table :catagories do |t|
      t.integer :price
      t.string :type
      t.string :color
      t.string :model
      t.string :company
      t.string :city
      t.string :address

      t.timestamps
    end
    add_index :catagories, [:type, :user_id]
  end
end
