class NoodleOrdersController < ApplicationController
  def new
    @order = Order.new
    @noodleorder = NoodleOrder.new
    @pastas = Noodle.all
  end

  def create
    order = Order.create!(user: current_user)
    noodleorder_params
    liste_noodles = params[:noodle_order][:noodle_id].drop(1)
    liste_noodles.each do |noodle_id|
      NoodleOrder.create!(noodle: Noodle.find(noodle_id), order: order)
    end
    redirect_to(root_path)
  end

  private

  def noodleorder_params
    params.require(:noodle_order).permit(:noodle_id)
  end
end
