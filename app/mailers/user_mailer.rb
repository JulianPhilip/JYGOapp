class UserMailer < ApplicationMailer
  default from: "defaultemail@example.com"

  def order_confirmation_shopper(order)
    @order = order

    @greeting = "Hi"

    mail to: @order.shopper.user.email, subject: "Demande de commande"
  end

  def order_confirmation_user(order)
    @order = order

    @greeting = "Hi"

    mail to: @order.user.email, subject: "Demande de commande"
  end

end
