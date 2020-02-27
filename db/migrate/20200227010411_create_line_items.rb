class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.references :product_id, null: false, foreign_key: true
      t.references :order_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
