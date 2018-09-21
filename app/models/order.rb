class Order < ApplicationRecord
  belongs_to :user
  has_many :noodle_orders
  has_many :noodles, through: :noodle_orders
end
