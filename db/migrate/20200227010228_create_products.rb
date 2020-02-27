class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.string :size
      t.string :color
      t.integer :amount
      t.string :image
      t.float :cost, :precision => 2
      t.float :price, :precision => 2

      t.timestamps
    end
  end
end
