class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :product, index: true, foreign_key: true
      t.integer :quantity
      t.decimal :line_items_total
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
