class OrdersController < ApplicationController
  def new
    @order = Order.new
    @noodleorder = NoodleOrder.new
    @pastas = Noodle.all
  end

  def create

  end

  def index

  end
end
