class Order < ApplicationRecord
  belongs_to :user
  has_many :noodle_orders
end
