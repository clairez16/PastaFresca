# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/subscription_confirmation
  def subscription_confirmation
    user = User.first
    UserMailer.subscription_confirmation(user)
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/order_confirmation
  def order_confirmation
    user = User.first
    order = Order.last
    UserMailer.order_confirmation(user, order)
  end

end
