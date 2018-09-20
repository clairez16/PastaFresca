class NoodleOrdersController < ApplicationController
  def new
    @order = Order.new
    @noodleorder = NoodleOrder.new
    @pastas = Noodle.all
  end

  def create
    @order = Order.new
    @noodleorder = NoodleOrder.new
    @pastas = Noodle.all
    noodleorder_params
    liste_noodles = params[:noodle_order][:noodle_id].drop(1)
    if liste_noodles.length != current_user.subscription.number_of_packs_per_week
      redirect_to new_noodle_order_path
    else
      order = Order.create!(user: current_user)
      liste_noodles.each do |noodle_id|
        NoodleOrder.create!(noodle: Noodle.find(noodle_id), order: order)
      end
      redirect_to orders_path
    end
  end

  private

  def noodleorder_params
    params.require(:noodle_order).permit(:noodle_id)
  end
end
