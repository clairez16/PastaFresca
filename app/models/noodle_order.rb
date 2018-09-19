class NoodleOrder < ApplicationRecord
  belongs_to :order
  belongs_to :noodle
end
