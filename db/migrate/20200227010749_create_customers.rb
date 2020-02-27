class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.decimal :royalty, :precision => 2
      t.decimal :wholesale_margin,  :precision => 2

      t.timestamps
    end
  end
end
