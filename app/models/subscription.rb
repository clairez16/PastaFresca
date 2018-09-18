class Subscription < ApplicationRecord
  validates :name, :price_per_month, :number_of_packs_per_week, presence: true
end
