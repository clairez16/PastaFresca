class UsersController < ApplicationController
  def edit
    @user = current_user
    @subscription_plans = Subscription.all[1..-1]
  end

  def update
    @user = current_user
    if params[:user][:subscription_id].to_i == 0
      @user.subscription_id = nil
    else
      @user.subscription_id = params[:user][:subscription_id].to_i
    end
    @user.save
    redirect_to edit_user_path
  end
end
