class UsersController < ApplicationController
  def edit
    @user = current_user
    @subscription_plans = Subscription.all[1..-1]
  end

  def update
    @user = current_user
    if params[:user][:subscription_id].to_i == 0
      @user.subscription_id = nil
      @user.save
    else
      @user.subscription_id = params[:user][:subscription_id].to_i
      @user.save
      UserMailer.subscription_confirmation(@user).deliver_now
    end
    redirect_to edit_user_path
  end
end
