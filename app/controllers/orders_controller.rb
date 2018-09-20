class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.reverse
  end
end
