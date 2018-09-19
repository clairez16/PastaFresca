class NoodleOrdersController < ApplicationController
  def new
    @order = Order.new
    @noodleorder1 = NoodleOrder.new
    @pastas = Noodle.all
  end

  def create
    raise
    order = Order.create!(user: current_user)
    noodleorder = NoodleOrder.new(noodleorder_params)
    noodleorder.order = order
    noodleorder.save!
    redirect_to(root_path)
  end

  private

  def noodleorder_params
    params.require(:noodle_order).permit(:noodle_id)
  end
end
