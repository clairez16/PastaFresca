class OrdersController < ApplicationController
  def new
    @order = Order.new
    @pastas = Noodle.all
  end

  def create
    order_params
    liste_noodles = params[:order][:noodles].drop(1)
    if liste_noodles.length != current_user.subscription.number_of_packs_per_week
      redirect_to new_order_path
    else
      order = Order.create!(user: current_user, noodle_ids: liste_noodles)
      UserMailer.order_confirmation(current_user, order).deliver_now
      redirect_to orders_path
    end
  end

  def index
    @orders = current_user.orders.reverse
  end

  private

  def order_params
    params.require(:order).permit(:noodles)
  end
end
