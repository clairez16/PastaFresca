class OrdersController < ApplicationController
  def new
    @order = Order.new
    @noodleorder = NoodleOrder.new
    @pastas = Noodle.all
  end

  def create
    raise
    @order = Order.create(user: current_user)
  end

  def index

  end
end
