class AddSubscriptionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :subscription, foreign_key: true, null: false, default: 1
  end
end
