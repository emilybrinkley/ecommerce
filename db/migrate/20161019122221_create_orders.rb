class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :grand_total
      t.references :user, index: true, foreign_key: true
      t.text :order_items
      t.decimal :sales_tax

      t.timestamps null: false
    end
  end
end
