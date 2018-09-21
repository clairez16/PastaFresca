class Order < ApplicationRecord
  attr_accessor :to_prepare, :in_progress, :ready, :sent

  belongs_to :user
  has_many :noodle_orders
  has_many :noodles, through: :noodle_orders

  def prepare!
    self.to_prepare = false
    self.in_progress = true
    self.save!
  end

  def ready!
    self.in_progress = false
    self.ready = true
    self.save!
  end

  def send!
    self.ready = false
    self.sent = true
    self.save!
  end

  def self.to_prepare
    return Order.where(to_prepare: true)
  end

  def self.in_progress
    return Order.where(in_progress: true)
  end

  def self.ready
    return Order.where(ready: true)
  end

  def self.sent
    return Order.where(sent: true)
  end
end
