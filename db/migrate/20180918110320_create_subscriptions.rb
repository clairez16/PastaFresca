class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :price_per_month
      t.integer :number_of_packs_per_week

      t.timestamps
    end
  end
end
