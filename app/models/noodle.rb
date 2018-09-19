class Noodle < ApplicationRecord
  has_many :noodle_orders

  validates :name, presence: true, uniqueness: true
end
