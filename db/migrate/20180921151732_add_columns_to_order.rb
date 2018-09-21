class AddColumnsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :to_prepare, :boolean, default: true
    add_column :orders, :in_progress, :boolean, default: false
    add_column :orders, :ready, :boolean, default: false
    add_column :orders, :sent, :boolean, default: false
  end
end
