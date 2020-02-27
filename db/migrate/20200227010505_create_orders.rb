class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :delivery_date
      t.string :status
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
