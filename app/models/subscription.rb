class Subscription < ApplicationRecord
  has_many :users

  validates :name, :price_per_month, :number_of_packs_per_week, presence: true
end
