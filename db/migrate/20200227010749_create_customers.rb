class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.decimal :royalty
      t.decimal :wholesale_margin

      t.timestamps
    end
  end
end
