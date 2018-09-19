class CreateNoodleOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :noodle_orders do |t|
      t.references :order, foreign_key: true
      t.references :noodle, foreign_key: true

      t.timestamps
    end
  end
end
